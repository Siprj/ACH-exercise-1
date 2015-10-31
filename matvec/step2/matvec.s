# mark_description "Intel(R) C++ Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.3.187 Build 20150";
# mark_description "407";
# mark_description "-lpapi -wd588 -ansi-alias -O2 -xavx -S -fsource-asm -c";
	.file "matvec.cpp"
	.text
..TXTST0:
# -- Begin  _Z11mat_vec_muljjPA_fPfS1_
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z11mat_vec_muljjPA_fPfS1_
_Z11mat_vec_muljjPA_fPfS1_:
# parameter 1: %edi
# parameter 2: %esi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
..B1.1:                         # Preds ..B1.0

### {

..___tag_value__Z11mat_vec_muljjPA_fPfS1_.1:                    #10.1
..L2:
                                                          #10.1

###     int i, j;
###     for (i = 0; i < rows; i++)

        xorl      %eax, %eax                                    #12.5
        movl      %esi, %r10d                                   #10.1
        testl     %edi, %edi                                    #12.21
        jbe       ..B1.26       # Prob 9%                       #12.21
                                # LOE rax rdx rcx rbx rbp r8 r10 r12 r13 r14 r15 esi edi
..B1.2:                         # Preds ..B1.1

###     {
###         #pragma ivdep
###         c[i] = 0.0f;

        movl      $0, (%r8)                                     #15.9
        movslq    %edi, %r11                                    #12.5

###         for (j = 0; j < cols; j++)

        testl     %esi, %esi                                    #16.25
        ja        ..B1.6        # Prob 50%                      #16.25
                                # LOE rax rdx rcx rbx rbp r8 r10 r11 r12 r13 r14 r15 esi
..B1.3:                         # Preds ..B1.2
        xorl      %edx, %edx                                    #
        jmp       ..B1.4        # Prob 100%                     #
                                # LOE rax rbx rbp r8 r11 r12 r13 r14 r15 edx
..B1.5:                         # Preds ..B1.4
        movl      %edx, (%r8,%rax,4)                            #15.9
                                # LOE rax rbx rbp r8 r11 r12 r13 r14 r15 edx
..B1.4:                         # Preds ..B1.3 ..B1.5
        incq      %rax                                          #12.5
        cmpq      %r11, %rax                                    #12.5
        jb        ..B1.5        # Prob 82%                      #12.5
        jmp       ..B1.26       # Prob 100%                     #12.5
                                # LOE rax rbx rbp r8 r11 r12 r13 r14 r15 edx
..B1.6:                         # Preds ..B1.2
        movq      %rcx, %r9                                     #16.9
        andq      $31, %r9                                      #16.9
        movl      %r9d, %edi                                    #16.9
        andl      $3, %edi                                      #16.9
        movl      %edi, -56(%rsp)                               #16.9
        movl      %r9d, %edi                                    #16.9
        negl      %edi                                          #16.9
        addl      $32, %edi                                     #16.9
        movq      %r14, -32(%rsp)                               #16.9

###         {
###             c[i] += a[i][j] * b[j];

        vxorps    %ymm0, %ymm0, %ymm0                           #18.13
        shrl      $2, %edi                                      #16.9
        movq      %r12, -48(%rsp)                               #16.9
        movq      %r13, -40(%rsp)                               #16.9
..___tag_value__Z11mat_vec_muljjPA_fPfS1_.3:                    #
        xorl      %r13d, %r13d                                  #16.9
        movq      %r15, -24(%rsp)                               #16.9
        movq      %rbx, -16(%rsp)                               #16.9
..___tag_value__Z11mat_vec_muljjPA_fPfS1_.6:                    #
        movl      -56(%rsp), %r14d                              #16.9
        jmp       ..B1.7        # Prob 100%                     #16.9
                                # LOE rax rdx rcx rbp r8 r10 r11 esi edi r9d r13d r14d ymm0
..B1.24:                        # Preds ..B1.23
        movl      %r13d, (%r8,%rax,4)                           #15.9
                                # LOE rax rdx rcx rbp r8 r10 r11 esi edi r9d r13d r14d ymm0
..B1.7:                         # Preds ..B1.24 ..B1.6
        vmovss    (%r8,%rax,4), %xmm1                           #18.13
        cmpl      $16, %esi                                     #16.9
        jb        ..B1.28       # Prob 10%                      #16.9
                                # LOE rax rdx rcx rbp r8 r10 r11 esi edi r9d r13d r14d xmm1 ymm0
..B1.8:                         # Preds ..B1.7
        movl      %r9d, %r15d                                   #16.9
        testl     %r9d, %r9d                                    #16.9
        je        ..B1.11       # Prob 50%                      #16.9
                                # LOE rax rdx rcx rbp r8 r10 r11 r15 esi edi r9d r13d r14d xmm1 ymm0
..B1.9:                         # Preds ..B1.8
        testl     %r14d, %r14d                                  #16.9
        jne       ..B1.28       # Prob 10%                      #16.9
                                # LOE rax rdx rcx rbp r8 r10 r11 esi edi r9d r13d r14d xmm1 ymm0
..B1.10:                        # Preds ..B1.9
        movl      %edi, %r15d                                   #16.9
                                # LOE rax rdx rcx rbp r8 r10 r11 r15 esi edi r9d r13d r14d xmm1 ymm0
..B1.11:                        # Preds ..B1.10 ..B1.8
        lea       16(%r15), %ebx                                #16.9
        cmpl      %ebx, %esi                                    #16.9
        jb        ..B1.28       # Prob 10%                      #16.9
                                # LOE rax rdx rcx rbp r8 r10 r11 r15 esi edi r9d r13d r14d xmm1 ymm0
..B1.12:                        # Preds ..B1.11
        movl      %esi, %r12d                                   #16.9
        xorl      %ebx, %ebx                                    #16.9
        subl      %r15d, %r12d                                  #16.9
        andl      $15, %r12d                                    #16.9
        negl      %r12d                                         #16.9
        addl      %esi, %r12d                                   #16.9
        testq     %r15, %r15                                    #16.9
        jbe       ..B1.16       # Prob 10%                      #16.9
                                # LOE rax rdx rcx rbx rbp r8 r10 r11 r15 esi edi r9d r12d r13d r14d xmm1 ymm0
..B1.14:                        # Preds ..B1.12 ..B1.14
        vmovss    (%rdx,%rbx,4), %xmm2                          #18.21
        vmulss    (%rcx,%rbx,4), %xmm2, %xmm3                   #18.31
        incq      %rbx                                          #16.9
        vaddss    %xmm3, %xmm1, %xmm1                           #18.13
        cmpq      %r15, %rbx                                    #16.9
        jb        ..B1.14       # Prob 82%                      #16.9
                                # LOE rax rdx rcx rbx rbp r8 r10 r11 r15 esi edi r9d r12d r13d r14d xmm1 ymm0
..B1.16:                        # Preds ..B1.14 ..B1.12
        movslq    %r12d, %rbx                                   #16.9
        vxorps    %xmm2, %xmm2, %xmm2                           #18.13
        vmovss    %xmm1, %xmm2, %xmm1                           #18.13
        vinsertf128 $1, %xmm2, %ymm1, %ymm2                     #18.13
        vmovaps   %ymm0, %ymm1                                  #18.13
                                # LOE rax rdx rcx rbx rbp r8 r10 r11 r15 esi edi r9d r12d r13d r14d ymm0 ymm1 ymm2
..B1.17:                        # Preds ..B1.17 ..B1.16
        vmovups   (%rdx,%r15,4), %xmm3                          #18.21
        vmovups   32(%rdx,%r15,4), %xmm6                        #18.21
        vinsertf128 $1, 16(%rdx,%r15,4), %ymm3, %ymm4           #18.21
        vinsertf128 $1, 48(%rdx,%r15,4), %ymm6, %ymm7           #18.21
        vmulps    (%rcx,%r15,4), %ymm4, %ymm5                   #18.31
        vmulps    32(%rcx,%r15,4), %ymm7, %ymm8                 #18.31
        vaddps    %ymm5, %ymm2, %ymm2                           #18.13
        vaddps    %ymm1, %ymm8, %ymm1                           #18.13
        addq      $16, %r15                                     #16.9
        cmpq      %rbx, %r15                                    #16.9
        jb        ..B1.17       # Prob 82%                      #16.9
                                # LOE rax rdx rcx rbx rbp r8 r10 r11 r15 esi edi r9d r12d r13d r14d ymm0 ymm1 ymm2
..B1.18:                        # Preds ..B1.17
        vaddps    %ymm1, %ymm2, %ymm1                           #18.13
        vextractf128 $1, %ymm1, %xmm2                           #18.13
        vaddps    %xmm2, %xmm1, %xmm3                           #18.13
        vmovhlps  %xmm3, %xmm3, %xmm4                           #18.13
        vaddps    %xmm4, %xmm3, %xmm5                           #18.13
        vshufps   $245, %xmm5, %xmm5, %xmm6                     #18.13
        vaddss    %xmm6, %xmm5, %xmm1                           #18.13
                                # LOE rax rdx rcx rbp r8 r10 r11 esi edi r9d r12d r13d r14d xmm1 ymm0
..B1.19:                        # Preds ..B1.18 ..B1.28
        movl      %r13d, %r15d                                  #16.9
        lea       1(%r12), %ebx                                 #16.9
        cmpl      %ebx, %esi                                    #16.9
        jb        ..B1.23       # Prob 10%                      #16.9
                                # LOE rax rdx rcx rbp r8 r10 r11 esi edi r9d r12d r13d r14d r15d xmm1 ymm0
..B1.20:                        # Preds ..B1.19
        movl      %esi, %ebx                                    #16.9
        movq      %r8, -56(%rsp)                                #16.9
        subl      %r12d, %ebx                                   #16.9
                                # LOE rax rdx rcx rbp r10 r11 ebx esi edi r9d r12d r13d r14d r15d xmm1 ymm0
..B1.21:                        # Preds ..B1.21 ..B1.20
        lea       (%r12,%r15), %r8d                             #18.21
        incl      %r15d                                         #16.9
        movslq    %r8d, %r8                                     #18.21
        vmovss    (%rdx,%r8,4), %xmm2                           #18.21
        vmulss    (%rcx,%r8,4), %xmm2, %xmm3                    #18.31
        vaddss    %xmm3, %xmm1, %xmm1                           #18.13
        cmpl      %ebx, %r15d                                   #16.9
        jb        ..B1.21       # Prob 82%                      #16.9
                                # LOE rax rdx rcx rbp r10 r11 ebx esi edi r9d r12d r13d r14d r15d xmm1 ymm0
..B1.22:                        # Preds ..B1.21
        movq      -56(%rsp), %r8                                #
                                # LOE rax rdx rcx rbp r8 r10 r11 esi edi r9d r13d r14d xmm1 ymm0
..B1.23:                        # Preds ..B1.22 ..B1.19
        lea       (%rdx,%r10,4), %rdx                           #12.5
        vmovss    %xmm1, (%r8,%rax,4)                           #18.13
        incq      %rax                                          #12.5
        cmpq      %r11, %rax                                    #12.5
        jb        ..B1.24       # Prob 82%                      #12.5
                                # LOE rax rdx rcx rbp r8 r10 r11 esi edi r9d r13d r14d ymm0
..B1.27:                        # Preds ..B1.23                 # Infreq
        movq      -48(%rsp), %r12                               #
..___tag_value__Z11mat_vec_muljjPA_fPfS1_.8:                    #
        movq      -40(%rsp), %r13                               #
..___tag_value__Z11mat_vec_muljjPA_fPfS1_.9:                    #
        movq      -32(%rsp), %r14                               #
..___tag_value__Z11mat_vec_muljjPA_fPfS1_.10:                   #
        movq      -24(%rsp), %r15                               #
..___tag_value__Z11mat_vec_muljjPA_fPfS1_.11:                   #
        movq      -16(%rsp), %rbx                               #
..___tag_value__Z11mat_vec_muljjPA_fPfS1_.12:                   #
                                # LOE rbx rbp r12 r13 r14 r15
..B1.26:                        # Preds ..B1.4 ..B1.27 ..B1.1   # Infreq

###         }
###     }
### }

        vzeroupper                                              #21.1
        ret                                                     #21.1
..___tag_value__Z11mat_vec_muljjPA_fPfS1_.13:                   #
                                # LOE
..B1.28:                        # Preds ..B1.7 ..B1.9 ..B1.11   # Infreq
        movl      %r13d, %r12d                                  #16.9
        jmp       ..B1.19       # Prob 100%                     #16.9
        .align    16,0x90
..___tag_value__Z11mat_vec_muljjPA_fPfS1_.18:                   #
                                # LOE rax rdx rcx rbp r8 r10 r11 esi edi r9d r12d r13d r14d xmm1 ymm0
# mark_end;
	.type	_Z11mat_vec_muljjPA_fPfS1_,@function
	.size	_Z11mat_vec_muljjPA_fPfS1_,.-_Z11mat_vec_muljjPA_fPfS1_
	.data
# -- End  _Z11mat_vec_muljjPA_fPfS1_
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x0000001c
	.8byte 0x00507a0100000000
	.4byte 0x09107801
	.byte 0x00
	.8byte __gxx_personality_v0
	.4byte 0x9008070c
	.2byte 0x0001
	.byte 0x00
	.4byte 0x0000005c
	.4byte 0x00000024
	.8byte ..___tag_value__Z11mat_vec_muljjPA_fPfS1_.1
	.8byte ..___tag_value__Z11mat_vec_muljjPA_fPfS1_.18-..___tag_value__Z11mat_vec_muljjPA_fPfS1_.1
	.2byte 0x0400
	.4byte ..___tag_value__Z11mat_vec_muljjPA_fPfS1_.3-..___tag_value__Z11mat_vec_muljjPA_fPfS1_.1
	.4byte 0x068d078c
	.2byte 0x058e
	.byte 0x04
	.4byte ..___tag_value__Z11mat_vec_muljjPA_fPfS1_.6-..___tag_value__Z11mat_vec_muljjPA_fPfS1_.3
	.4byte 0x048f0383
	.byte 0x04
	.4byte ..___tag_value__Z11mat_vec_muljjPA_fPfS1_.8-..___tag_value__Z11mat_vec_muljjPA_fPfS1_.6
	.2byte 0x04cc
	.4byte ..___tag_value__Z11mat_vec_muljjPA_fPfS1_.9-..___tag_value__Z11mat_vec_muljjPA_fPfS1_.8
	.2byte 0x04cd
	.4byte ..___tag_value__Z11mat_vec_muljjPA_fPfS1_.10-..___tag_value__Z11mat_vec_muljjPA_fPfS1_.9
	.2byte 0x04ce
	.4byte ..___tag_value__Z11mat_vec_muljjPA_fPfS1_.11-..___tag_value__Z11mat_vec_muljjPA_fPfS1_.10
	.2byte 0x04cf
	.4byte ..___tag_value__Z11mat_vec_muljjPA_fPfS1_.12-..___tag_value__Z11mat_vec_muljjPA_fPfS1_.11
	.2byte 0x04c3
	.4byte ..___tag_value__Z11mat_vec_muljjPA_fPfS1_.13-..___tag_value__Z11mat_vec_muljjPA_fPfS1_.12
	.8byte 0x058e068d078c0383
	.8byte 0x000000000000048f
# End
