// RUN: %target-swift-frontend -emit-ir %s | %FileCheck %s

// CHECK: [[INT:@.*]] = private constant [3 x i8] c"Si\00"
// CHECK: [[X:@.*]] = private constant [2 x i8] c"x\00"
// CHECK: [[STRING:@.*]] = private constant [3 x i8] c"SS\00"
// CHECK: [[Y:@.*]] = private constant [2 x i8] c"y\00"

// CHECK-LABEL: @"$S27reflection_metadata_let_var6StruccVMF" = internal constant
struct Strucc {
// --             flags (let)
// CHECK-SAME:    i32 0, 
// --             type
// CHECK-SAME:    [[INT]] to
// --             name
// CHECK-SAME:    [[X]] to
  let x: Int

// --             flags (var)
// CHECK-SAME:    i32 2, 
// --             type
// CHECK-SAME:    [[STRING]] to
// --             name
// CHECK-SAME:    [[Y]] to
  var y: String
}

