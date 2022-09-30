define i32 @Test1(i32 %a){
entry:
    %b.address = alloca i32, align 4
    %compare.result = icmp sgt i32 %a, 33
    br i1 %compare.result, label %if.then, label %if.else

if.then:
    store i32 66, i32* %b.address, align 4
    br label %if.end

if.else:
    store i32 77, i32* %b.address, align 4
    br label %if.end

if.end:
    %return.value = load i32, i32* %b.address, align 4
    ret i32 %return.value
}

define i32 @Test2(i32 %a){
entry:
    %b.address = alloca i32, align 4
    store i32 0, i32* %b.address, align 4
    %i.address = alloca i32, align 4
    store i32 0, i32* %i.address, align 4
    br label %for.cond

for.cond:
    %0 = load i32, i32* %i.address, align 4
    %compare.result = icmp slt i32 %0, %a
    br i1 %compare.result, label %for.body, label %for.end

for.body:
    %1 = load i32, i32* %b.address, align 4
    %2 = add i32 %1, 1
    store i32 %2, i32* %b.address, align 4
    br label %for.cond

for.incre:
    %3 = load i32, i32* %i.address, align 4
    %4 = add i32 %3, 1
    store i32 %4, i32* %i.address, align 4
    br label %for.cond

for.end:
    %return.value = load i32, i32* %b.address, align 4
    ret i32 %return.value
}

define dso_local i32 @main() {
    %result = call i32 @Test1(i32 44)
    ret i32 %result
}