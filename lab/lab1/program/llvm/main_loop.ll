; ModuleID = 'main_copy.ll'
source_filename = "main_copy.ll"

define i32 @fib1(i32 %n) {
entry:
  %a.address = alloca i32, align 4
  store i32 0, i32* %a.address, align 4
  %b.address = alloca i32, align 4
  store i32 1, i32* %b.address, align 4
  %c.address = alloca i32, align 4
  store i32 0, i32* %c.address, align 4
  %i.address = alloca i32, align 4
  store i32 0, i32* %i.address, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i.address, align 4
  %cmp = icmp slt i32 %0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %a.address, align 4
  %2 = load i32, i32* %b.address, align 4
  %add = add i32 %1, %2
  store i32 %add, i32* %c.address, align 4
  %3 = load i32, i32* %b.address, align 4
  store i32 %3, i32* %a.address, align 4
  %4 = load i32, i32* %c.address, align 4
  store i32 %4, i32* %b.address, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i.address, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i.address, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %a.address, align 4
  ret i32 %6
}

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
  %call = call i32 @fib(i32 10)
  ret i32 %call
}
