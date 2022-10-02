; ModuleID = 'main_copy.ll'
source_filename = "main_copy.ll"

@n = dso_local constant i32 6, align 4
@a = dso_local global [6 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00], align 16
@m = dso_local constant i32 2, align 4

define void @loop() {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.address.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %n = load i32, i32* @n, align 4
  %cmp = icmp slt i32 %i.address.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i.conv = sext i32 %i.address.0 to i64
  %a.i.p = getelementptr inbounds [6 x float], [6 x float]* @a, i64 0, i64 %i.conv
  %a.i = load float, float* %a.i.p, align 4
  %mul = fmul float %a.i, 3.000000e+00
  %div = fdiv float %mul, 2.000000e+00
  store float %div, float* %a.i.p, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.address.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

define dso_local i32 @main() {
entry:
  call void @loop()
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @m, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}
