; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+m,+v,+d -verify-machineinstrs < %s | FileCheck %s --check-prefixes=CHECK,RV32
; RUN: llc -mtriple=riscv64 -mattr=+m,+v,+d -verify-machineinstrs < %s | FileCheck %s --check-prefixes=CHECK,RV64

define <4 x i32> @add_constant_rhs(i32 %a, i32 %b, i32 %c, i32 %d) {
; RV32-LABEL: add_constant_rhs:
; RV32:       # %bb.0:
; RV32-NEXT:    addi a0, a0, 23
; RV32-NEXT:    addi a1, a1, 25
; RV32-NEXT:    addi a2, a2, 1
; RV32-NEXT:    addi a3, a3, 2047
; RV32-NEXT:    addi a3, a3, 308
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: add_constant_rhs:
; RV64:       # %bb.0:
; RV64-NEXT:    addiw a0, a0, 23
; RV64-NEXT:    addiw a1, a1, 25
; RV64-NEXT:    addiw a2, a2, 1
; RV64-NEXT:    addiw a3, a3, 2047
; RV64-NEXT:    addiw a3, a3, 308
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = add i32 %a, 23
  %e1 = add i32 %b, 25
  %e2 = add i32 %c, 1
  %e3 = add i32 %d, 2355
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %e3, i32 3
  ret <4 x i32> %v3
}

define <8 x i32> @add_constant_rhs_8xi32(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i32 %g, i32 %h) {
; RV32-LABEL: add_constant_rhs_8xi32:
; RV32:       # %bb.0:
; RV32-NEXT:    addi a0, a0, 23
; RV32-NEXT:    addi a1, a1, 25
; RV32-NEXT:    addi a2, a2, 1
; RV32-NEXT:    addi a3, a3, 2047
; RV32-NEXT:    addi a3, a3, 308
; RV32-NEXT:    addi a4, a4, 23
; RV32-NEXT:    addi a5, a5, 23
; RV32-NEXT:    addi a6, a6, 22
; RV32-NEXT:    addi a7, a7, 23
; RV32-NEXT:    vsetivli zero, 8, e32, m2, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    vslide1down.vx v8, v8, a4
; RV32-NEXT:    vslide1down.vx v8, v8, a5
; RV32-NEXT:    vslide1down.vx v8, v8, a6
; RV32-NEXT:    vslide1down.vx v8, v8, a7
; RV32-NEXT:    ret
;
; RV64-LABEL: add_constant_rhs_8xi32:
; RV64:       # %bb.0:
; RV64-NEXT:    addiw a0, a0, 23
; RV64-NEXT:    addiw a1, a1, 25
; RV64-NEXT:    addiw a2, a2, 1
; RV64-NEXT:    addiw a3, a3, 2047
; RV64-NEXT:    addiw a3, a3, 308
; RV64-NEXT:    addiw a4, a4, 23
; RV64-NEXT:    addiw a5, a5, 23
; RV64-NEXT:    addiw a6, a6, 22
; RV64-NEXT:    addiw a7, a7, 23
; RV64-NEXT:    vsetivli zero, 8, e32, m2, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    vslide1down.vx v8, v8, a4
; RV64-NEXT:    vslide1down.vx v8, v8, a5
; RV64-NEXT:    vslide1down.vx v8, v8, a6
; RV64-NEXT:    vslide1down.vx v8, v8, a7
; RV64-NEXT:    ret
  %e0 = add i32 %a, 23
  %e1 = add i32 %b, 25
  %e2 = add i32 %c, 1
  %e3 = add i32 %d, 2355
  %e4 = add i32 %e, 23
  %e5 = add i32 %f, 23
  %e6 = add i32 %g, 22
  %e7 = add i32 %h, 23
  %v0 = insertelement <8 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <8 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <8 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <8 x i32> %v2, i32 %e3, i32 3
  %v4 = insertelement <8 x i32> %v3, i32 %e4, i32 4
  %v5 = insertelement <8 x i32> %v4, i32 %e5, i32 5
  %v6 = insertelement <8 x i32> %v5, i32 %e6, i32 6
  %v7 = insertelement <8 x i32> %v6, i32 %e7, i32 7
  ret <8 x i32> %v7
}


define <4 x i32> @sub_constant_rhs(i32 %a, i32 %b, i32 %c, i32 %d) {
; RV32-LABEL: sub_constant_rhs:
; RV32:       # %bb.0:
; RV32-NEXT:    addi a0, a0, -23
; RV32-NEXT:    addi a1, a1, -25
; RV32-NEXT:    addi a2, a2, -1
; RV32-NEXT:    addi a3, a3, -2048
; RV32-NEXT:    addi a3, a3, -307
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: sub_constant_rhs:
; RV64:       # %bb.0:
; RV64-NEXT:    addiw a0, a0, -23
; RV64-NEXT:    addiw a1, a1, -25
; RV64-NEXT:    addiw a2, a2, -1
; RV64-NEXT:    addiw a3, a3, -2048
; RV64-NEXT:    addiw a3, a3, -307
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = sub i32 %a, 23
  %e1 = sub i32 %b, 25
  %e2 = sub i32 %c, 1
  %e3 = sub i32 %d, 2355
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %e3, i32 3
  ret <4 x i32> %v3
}

define <4 x i32> @mul_constant_rhs(i32 %a, i32 %b, i32 %c, i32 %d) {
; RV32-LABEL: mul_constant_rhs:
; RV32:       # %bb.0:
; RV32-NEXT:    li a4, 23
; RV32-NEXT:    mul a0, a0, a4
; RV32-NEXT:    li a4, 25
; RV32-NEXT:    mul a1, a1, a4
; RV32-NEXT:    li a4, 27
; RV32-NEXT:    mul a2, a2, a4
; RV32-NEXT:    lui a4, 1
; RV32-NEXT:    addi a4, a4, -1741
; RV32-NEXT:    mul a3, a3, a4
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: mul_constant_rhs:
; RV64:       # %bb.0:
; RV64-NEXT:    li a4, 23
; RV64-NEXT:    mulw a0, a0, a4
; RV64-NEXT:    li a4, 25
; RV64-NEXT:    mulw a1, a1, a4
; RV64-NEXT:    li a4, 27
; RV64-NEXT:    mulw a2, a2, a4
; RV64-NEXT:    lui a4, 1
; RV64-NEXT:    addiw a4, a4, -1741
; RV64-NEXT:    mulw a3, a3, a4
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = mul i32 %a, 23
  %e1 = mul i32 %b, 25
  %e2 = mul i32 %c, 27
  %e3 = mul i32 %d, 2355
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %e3, i32 3
  ret <4 x i32> %v3
}

define <4 x i32> @udiv_constant_rhs(i32 %a, i32 %b, i32 %c, i32 %d) {
; RV32-LABEL: udiv_constant_rhs:
; RV32:       # %bb.0:
; RV32-NEXT:    lui a4, 729444
; RV32-NEXT:    addi a4, a4, 713
; RV32-NEXT:    mulhu a0, a0, a4
; RV32-NEXT:    srli a0, a0, 4
; RV32-NEXT:    lui a4, 335544
; RV32-NEXT:    addi a4, a4, 1311
; RV32-NEXT:    mulhu a1, a1, a4
; RV32-NEXT:    srli a1, a1, 3
; RV32-NEXT:    lui a4, 93703
; RV32-NEXT:    addi a4, a4, -1899
; RV32-NEXT:    mulhu a4, a3, a4
; RV32-NEXT:    sub a3, a3, a4
; RV32-NEXT:    srli a3, a3, 1
; RV32-NEXT:    add a3, a3, a4
; RV32-NEXT:    srli a3, a3, 7
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: udiv_constant_rhs:
; RV64:       # %bb.0:
; RV64-NEXT:    slli a0, a0, 32
; RV64-NEXT:    lui a4, 729444
; RV64-NEXT:    addiw a4, a4, 713
; RV64-NEXT:    slli a4, a4, 32
; RV64-NEXT:    mulhu a0, a0, a4
; RV64-NEXT:    srli a0, a0, 36
; RV64-NEXT:    slli a1, a1, 32
; RV64-NEXT:    lui a4, 335544
; RV64-NEXT:    addiw a4, a4, 1311
; RV64-NEXT:    slli a4, a4, 32
; RV64-NEXT:    mulhu a1, a1, a4
; RV64-NEXT:    srli a1, a1, 35
; RV64-NEXT:    slli a4, a3, 32
; RV64-NEXT:    lui a5, 93703
; RV64-NEXT:    addiw a5, a5, -1899
; RV64-NEXT:    slli a5, a5, 32
; RV64-NEXT:    mulhu a4, a4, a5
; RV64-NEXT:    srli a4, a4, 32
; RV64-NEXT:    subw a3, a3, a4
; RV64-NEXT:    srliw a3, a3, 1
; RV64-NEXT:    add a3, a3, a4
; RV64-NEXT:    srli a3, a3, 7
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = udiv i32 %a, 23
  %e1 = udiv i32 %b, 25
  %e2 = udiv i32 %c, 1
  %e3 = udiv i32 %d, 235
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %e3, i32 3
  ret <4 x i32> %v3
}


define <4 x float> @fadd_constant_rhs(float %a, float %b, float %c, float %d) {
; CHECK-LABEL: fadd_constant_rhs:
; CHECK:       # %bb.0:
; CHECK-NEXT:    lui a0, 269184
; CHECK-NEXT:    fmv.w.x fa5, a0
; CHECK-NEXT:    fadd.s fa4, fa0, fa5
; CHECK-NEXT:    lui a0, 269440
; CHECK-NEXT:    fmv.w.x fa0, a0
; CHECK-NEXT:    fadd.s fa1, fa1, fa0
; CHECK-NEXT:    lui a0, 262144
; CHECK-NEXT:    fmv.w.x fa0, a0
; CHECK-NEXT:    fadd.s fa2, fa2, fa0
; CHECK-NEXT:    fadd.s fa5, fa3, fa5
; CHECK-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; CHECK-NEXT:    vfslide1down.vf v8, v8, fa4
; CHECK-NEXT:    vfslide1down.vf v8, v8, fa1
; CHECK-NEXT:    vfslide1down.vf v8, v8, fa2
; CHECK-NEXT:    vfslide1down.vf v8, v8, fa5
; CHECK-NEXT:    ret
  %e0 = fadd float %a, 23.0
  %e1 = fadd float %b, 25.0
  %e2 = fadd float %c, 2.0
  %e3 = fadd float %d, 23.0
  %v0 = insertelement <4 x float> poison, float %e0, i32 0
  %v1 = insertelement <4 x float> %v0, float %e1, i32 1
  %v2 = insertelement <4 x float> %v1, float %e2, i32 2
  %v3 = insertelement <4 x float> %v2, float %e3, i32 3
  ret <4 x float> %v3
}

define <4 x float> @fdiv_constant_rhs(float %a, float %b, float %c, float %d) {
; CHECK-LABEL: fdiv_constant_rhs:
; CHECK:       # %bb.0:
; CHECK-NEXT:    lui a0, 269184
; CHECK-NEXT:    fmv.w.x fa5, a0
; CHECK-NEXT:    fdiv.s fa4, fa0, fa5
; CHECK-NEXT:    lui a0, 269440
; CHECK-NEXT:    fmv.w.x fa0, a0
; CHECK-NEXT:    fdiv.s fa1, fa1, fa0
; CHECK-NEXT:    lui a0, 266752
; CHECK-NEXT:    fmv.w.x fa0, a0
; CHECK-NEXT:    fdiv.s fa2, fa2, fa0
; CHECK-NEXT:    fdiv.s fa5, fa3, fa5
; CHECK-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; CHECK-NEXT:    vfslide1down.vf v8, v8, fa4
; CHECK-NEXT:    vfslide1down.vf v8, v8, fa1
; CHECK-NEXT:    vfslide1down.vf v8, v8, fa2
; CHECK-NEXT:    vfslide1down.vf v8, v8, fa5
; CHECK-NEXT:    ret
  %e0 = fdiv float %a, 23.0
  %e1 = fdiv float %b, 25.0
  %e2 = fdiv float %c, 10.0
  %e3 = fdiv float %d, 23.0
  %v0 = insertelement <4 x float> poison, float %e0, i32 0
  %v1 = insertelement <4 x float> %v0, float %e1, i32 1
  %v2 = insertelement <4 x float> %v1, float %e2, i32 2
  %v3 = insertelement <4 x float> %v2, float %e3, i32 3
  ret <4 x float> %v3
}

define <4 x i32> @add_constant_rhs_splat(i32 %a, i32 %b, i32 %c, i32 %d) {
; RV32-LABEL: add_constant_rhs_splat:
; RV32:       # %bb.0:
; RV32-NEXT:    addi a0, a0, 23
; RV32-NEXT:    addi a1, a1, 23
; RV32-NEXT:    addi a2, a2, 23
; RV32-NEXT:    addi a3, a3, 23
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: add_constant_rhs_splat:
; RV64:       # %bb.0:
; RV64-NEXT:    addiw a0, a0, 23
; RV64-NEXT:    addiw a1, a1, 23
; RV64-NEXT:    addiw a2, a2, 23
; RV64-NEXT:    addiw a3, a3, 23
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = add i32 %a, 23
  %e1 = add i32 %b, 23
  %e2 = add i32 %c, 23
  %e3 = add i32 %d, 23
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %e3, i32 3
  ret <4 x i32> %v3
}

define <4 x i32> @add_constant_rhs_with_identity(i32 %a, i32 %b, i32 %c, i32 %d) {
; RV32-LABEL: add_constant_rhs_with_identity:
; RV32:       # %bb.0:
; RV32-NEXT:    addi a1, a1, 25
; RV32-NEXT:    addi a2, a2, 1
; RV32-NEXT:    addi a3, a3, 2047
; RV32-NEXT:    addi a3, a3, 308
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: add_constant_rhs_with_identity:
; RV64:       # %bb.0:
; RV64-NEXT:    addiw a1, a1, 25
; RV64-NEXT:    addiw a2, a2, 1
; RV64-NEXT:    addiw a3, a3, 2047
; RV64-NEXT:    addiw a3, a3, 308
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = add i32 %a, 0
  %e1 = add i32 %b, 25
  %e2 = add i32 %c, 1
  %e3 = add i32 %d, 2355
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %e3, i32 3
  ret <4 x i32> %v3
}

define <4 x i32> @add_constant_rhs_identity(i32 %a, i32 %b, i32 %c, i32 %d) {
; RV32-LABEL: add_constant_rhs_identity:
; RV32:       # %bb.0:
; RV32-NEXT:    addi a1, a1, 25
; RV32-NEXT:    addi a2, a2, 1
; RV32-NEXT:    addi a3, a3, 2047
; RV32-NEXT:    addi a3, a3, 308
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: add_constant_rhs_identity:
; RV64:       # %bb.0:
; RV64-NEXT:    addiw a1, a1, 25
; RV64-NEXT:    addiw a2, a2, 1
; RV64-NEXT:    addiw a3, a3, 2047
; RV64-NEXT:    addiw a3, a3, 308
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = add i32 %a, 0
  %e1 = add i32 %b, 25
  %e2 = add i32 %c, 1
  %e3 = add i32 %d, 2355
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %e3, i32 3
  ret <4 x i32> %v3
}

define <4 x i32> @add_constant_rhs_identity2(i32 %a, i32 %b, i32 %c, i32 %d) {
; RV32-LABEL: add_constant_rhs_identity2:
; RV32:       # %bb.0:
; RV32-NEXT:    addi a0, a0, 23
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: add_constant_rhs_identity2:
; RV64:       # %bb.0:
; RV64-NEXT:    addiw a0, a0, 23
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = add i32 %a, 23
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %b, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %c, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %d, i32 3
  ret <4 x i32> %v3
}

define <4 x i32> @add_constant_rhs_inverse(i32 %a, i32 %b, i32 %c, i32 %d) {
; RV32-LABEL: add_constant_rhs_inverse:
; RV32:       # %bb.0:
; RV32-NEXT:    addi a0, a0, -1
; RV32-NEXT:    addi a1, a1, 25
; RV32-NEXT:    addi a2, a2, 1
; RV32-NEXT:    addi a3, a3, 2047
; RV32-NEXT:    addi a3, a3, 308
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: add_constant_rhs_inverse:
; RV64:       # %bb.0:
; RV64-NEXT:    addiw a0, a0, -1
; RV64-NEXT:    addiw a1, a1, 25
; RV64-NEXT:    addiw a2, a2, 1
; RV64-NEXT:    addiw a3, a3, 2047
; RV64-NEXT:    addiw a3, a3, 308
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = sub i32 %a, 1
  %e1 = add i32 %b, 25
  %e2 = add i32 %c, 1
  %e3 = add i32 %d, 2355
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %e3, i32 3
  ret <4 x i32> %v3
}

define <4 x i32> @add_constant_rhs_commute(i32 %a, i32 %b, i32 %c, i32 %d) {
; RV32-LABEL: add_constant_rhs_commute:
; RV32:       # %bb.0:
; RV32-NEXT:    addi a0, a0, 23
; RV32-NEXT:    addi a1, a1, 25
; RV32-NEXT:    addi a2, a2, 1
; RV32-NEXT:    addi a3, a3, 2047
; RV32-NEXT:    addi a3, a3, 308
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: add_constant_rhs_commute:
; RV64:       # %bb.0:
; RV64-NEXT:    addiw a0, a0, 23
; RV64-NEXT:    addiw a1, a1, 25
; RV64-NEXT:    addiw a2, a2, 1
; RV64-NEXT:    addiw a3, a3, 2047
; RV64-NEXT:    addiw a3, a3, 308
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = add i32 %a, 23
  %e1 = add i32 %b, 25
  %e2 = add i32 1, %c
  %e3 = add i32 %d, 2355
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %e3, i32 3
  ret <4 x i32> %v3
}


define <4 x i32> @add_general_rhs(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i32 %g, i32 %h) {
; RV32-LABEL: add_general_rhs:
; RV32:       # %bb.0:
; RV32-NEXT:    add a0, a0, a4
; RV32-NEXT:    add a1, a1, a5
; RV32-NEXT:    add a2, a2, a6
; RV32-NEXT:    add a3, a3, a7
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: add_general_rhs:
; RV64:       # %bb.0:
; RV64-NEXT:    addw a0, a0, a4
; RV64-NEXT:    addw a1, a1, a5
; RV64-NEXT:    addw a2, a2, a6
; RV64-NEXT:    addw a3, a3, a7
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = add i32 %a, %e
  %e1 = add i32 %b, %f
  %e2 = add i32 %c, %g
  %e3 = add i32 %d, %h
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %e3, i32 3
  ret <4 x i32> %v3
}

define <4 x i32> @add_general_splat(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e) {
; RV32-LABEL: add_general_splat:
; RV32:       # %bb.0:
; RV32-NEXT:    add a0, a0, a4
; RV32-NEXT:    add a1, a1, a4
; RV32-NEXT:    add a2, a2, a4
; RV32-NEXT:    add a3, a3, a4
; RV32-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV32-NEXT:    vslide1down.vx v8, v8, a0
; RV32-NEXT:    vslide1down.vx v8, v8, a1
; RV32-NEXT:    vslide1down.vx v8, v8, a2
; RV32-NEXT:    vslide1down.vx v8, v8, a3
; RV32-NEXT:    ret
;
; RV64-LABEL: add_general_splat:
; RV64:       # %bb.0:
; RV64-NEXT:    addw a0, a0, a4
; RV64-NEXT:    addw a1, a1, a4
; RV64-NEXT:    addw a2, a2, a4
; RV64-NEXT:    addw a3, a3, a4
; RV64-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; RV64-NEXT:    vslide1down.vx v8, v8, a0
; RV64-NEXT:    vslide1down.vx v8, v8, a1
; RV64-NEXT:    vslide1down.vx v8, v8, a2
; RV64-NEXT:    vslide1down.vx v8, v8, a3
; RV64-NEXT:    ret
  %e0 = add i32 %a, %e
  %e1 = add i32 %b, %e
  %e2 = add i32 %c, %e
  %e3 = add i32 %d, %e
  %v0 = insertelement <4 x i32> poison, i32 %e0, i32 0
  %v1 = insertelement <4 x i32> %v0, i32 %e1, i32 1
  %v2 = insertelement <4 x i32> %v1, i32 %e2, i32 2
  %v3 = insertelement <4 x i32> %v2, i32 %e3, i32 3
  ret <4 x i32> %v3
}
