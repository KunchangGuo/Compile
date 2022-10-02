@n = dso_local constant i32 6, align 4
@a = dso_local global [6 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00], align 16
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1

define void @loop() {
entry:
    %i.address = alloca i32, align 4
    store i32 0, i32* %i.address, align 4
    br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
    %i = load i32, i32* %i.address, align 4
    %n = load i32, i32* @n, align 4
    %cmp = icmp slt i32 %i, %n
    br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
    %i.conv = sext i32 %i to i64
    %a.i.p = getelementptr inbounds [6 x float], [6 x float]* @a, i64 0, i64 %i.conv
    %a.i = load float, float* %a.i.p, align 4
    %mul = fmul float %a.i, 3.000000e+00
    %div = fdiv float %mul, 2.000000e+00
    store float %div, float* %a.i.p, align 4
    br label %for.inc

for.inc:                                          ; preds = %for.body
    %inc = add nsw i32 %i, 1
    store i32 %inc, i32* %i.address, align 4
    br label %for.cond

for.end:                                          ; preds = %for.cond
    ret void
}

define void @print() {
entry:
    %i.address = alloca i32, align 4    ;i=0
    store i32 0, i32* %i.address, align 4
    br label %for.cond

for.cond:                                           ; preds = %for.inc, %entry
    %i = load i32, i32* %i.address, align 4
    %cmp = icmp slt i32 %i, 6
    br i1 %cmp, label %for.body, label %for.end

for.body:                                           ; preds = %for.cond
    %0 = sext i32 %i to i64
    %arrayidx = getelementptr inbounds [6 x float], [6 x float]* @a, i64 0, i64 %0
    %1 = load float, float* %arrayidx, align 4
    %2 = fpext float %1 to double
    %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %2)
    br label %for.inc

for.inc:                                            ; preds = %for.body
    %3 = load i32, i32* %i.address, align 4
    %inc = add nsw i32 %3, 1
    store i32 %inc, i32* %i.address, align 4
    br label %for.cond

for.end:                                            ; preds = %for.cond
    ret void
}

declare i32 @printf(i8* noundef, ...)

define i32 @fib(i32 %n) {
entry:
  %cmp = icmp eq i32 %n, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  ret i32 0

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %n, 1
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  ret i32 1

if.else3:                                         ; preds = %if.else
  %sub = sub i32 %n, 1
  %call = call i32 @fib(i32 %sub)
  %sub4 = sub i32 %n, 2
  %call5 = call i32 @fib(i32 %sub4)
  %add = add i32 %call, %call5
  ret i32 %add
}

define dso_local i32 @main() {
entry:
    call void @loop()
    call void @print()
    %call = call i32 @fib(i32 10)
    ret i32 %call
}