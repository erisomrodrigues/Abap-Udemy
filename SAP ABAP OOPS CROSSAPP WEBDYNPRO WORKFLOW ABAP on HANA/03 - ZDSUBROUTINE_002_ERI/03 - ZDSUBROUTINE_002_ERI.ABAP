DATA: lv_d1 TYPE i VALUE 500,
      lv_d2 TYPE i VALUE 250.

PERFORM sub7 USING lv_d1 lv_d2.

PERFORM sub8 USING lv_d1 lv_d2.
ULINE.
PERFORM sub7 USING lv_d1 lv_d2.
ULINE.
lv_d1 = 500.
lv_d2 = 250.
ULINE.
PERFORM SUB7 USING lv_d1 lv_d2.

PERFORM SUB9 USING LV_D1 LV_D2.

*&---------------------------------------------------------------------*
*& Form SUB7
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*&      --> LV_D1
*&      --> LV_D2
*&---------------------------------------------------------------------*
FORM sub7  USING    p_lv_d1 p_lv_d2.
  WRITE:/ ' VALUE FOR LV_D1 IS: ', p_lv_d1,
        / ' VALUE FOR LV_D2 IS: ', p_lv_d2.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form SUB8
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*&      --> LV_D1
*&      --> LV_D2
*&---------------------------------------------------------------------*
FORM sub8  USING    p_lv_d1 p_lv_d2.

  DATA: lv_local TYPE i.

  lv_local = p_lv_d1.
  p_lv_d1 = p_lv_d2.
  p_lv_d2 = lv_local.

ENDFORM.
*&---------------------------------------------------------------------*
*& Form SUB9
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*&      --> LV_D1
*&      --> LV_D2
*&---------------------------------------------------------------------*
FORM sub9  USING    VALUE(p_lv_d1) VALUE(p_lv_d2).

      DATA: LV_LOCAL TYPE I.
      lv_local = p_lv_d1.
      p_lv_d1 = p_lv_d2.
      p_lv_d2 = lv_local.

ENDFORM.
