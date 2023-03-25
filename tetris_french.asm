func_copy_b_bytes_from_de_to_hl equ $0725

SECTION "start", ROM0[$00da]
copy_start::
        ld      b, 4*5
        ld      de, sprites_start
        jp      func_copy_b_bytes_from_de_to_hl
sprites_start::
        db      $42, $54, $0e, $00 ; S
        db      $42, $5c, $1d, $00 ; T
        db      $42, $64, $b5, $00 ; A
        db      $42, $6c, $bb, $00 ; R
        db      $42, $74, $1d, $00 ; T

SECTION "appuie_sur", ROM0[$0f33]
copy_appuie_sur::
        call    func_copy_b_bytes_from_de_to_hl
        call    copy_start

SECTION "sprites_appuie_sur", ROM0[$0f3c]
        db      $3a, $40, $b5, $00 ; A
        db      $3a, $48, $0d, $00 ; P
        db      $3a, $50, $0d, $00 ; P
        db      $3a, $58, $b2, $00 ; U
        db      $3a, $60, $2e, $00 ; I
        db      $3a, $68, $b1, $00 ; E
        
        db      $42, $34, $0e, $00 ; S
        db      $42, $3c, $b2, $00 ; U
        db      $42, $44, $bb, $00 ; R

SECTION "number_of_characters", ROM0[$0f66]
        ld      b, 14
