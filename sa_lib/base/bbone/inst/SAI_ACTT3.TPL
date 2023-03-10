#ERROR CONTINUE

; Defination of colors in Bus bar coloring
; Scope "M", Range 33 - 37
@COLOR_PASSIVE  = 33
@COLOR_GROUNDED = 34
@COLOR_UNKNOWN  = 37

; The value of this variable can be changhed in
; "SAGR_INST/SAI_PROJCT.TXT"
@GROUNDED_PROPAGATE = FALSE

; These lines are changed during installation of 
; Command procedure, with the actual index numbers
@WINDING1 = (250, 241, 246, 242, 243, 247, 248, 251, 252, 253, 254, 255, 240, 244)
@WINDING2 = (251, 242, 247, 241, 243, 246, 248, 250, 252, 254, 253, 255, 240, 244)
@WINDING3 = (252, 243, 248, 241, 242, 246, 247, 250, 251, 255, 253, 254, 240, 244)

@V = SELECT((%WINDING1(3), %WINDING2(3), %WINDING3(3)), "==%IX")
@WINDING_NR = DEC(%V(1),1)

@TMP_COLOR      = %WINDING'WINDING_NR'(1)
@TMP_SWITCH     = %WINDING'WINDING_NR'(2)
@TMP_PASSIVE    = %WINDING'WINDING_NR'(3)
@TMP_GROUND_SW  = %WINDING'WINDING_NR'(10)
@TMP_SWITCH1    = %WINDING'WINDING_NR'(4)
@TMP_SWITCH2    = %WINDING'WINDING_NR'(5)
@TMP_PASSIVE1   = %WINDING'WINDING_NR'(6)
@TMP_PASSIVE2   = %WINDING'WINDING_NR'(7)  
@TMP_COLOR1     = %WINDING'WINDING_NR'(8)
@TMP_COLOR2     = %WINDING'WINDING_NR'(9)
@TMP_GROUND_SW1 = %WINDING'WINDING_NR'(11)
@TMP_GROUND_SW2 = %WINDING'WINDING_NR'(12)
@TMP_DUMMY1     = %WINDING'WINDING_NR'(13)
@TMP_DUMMY2     = %WINDING'WINDING_NR'(14)

; #DO READ_TEXT("BBONE/PATH4.TXT")
#DO READ_TEXT("SAGR_INST/SAI_PROJCT.TXT")

#IF      (%AI == %COLOR_PASSIVE) AND -
         ('LN':PBI'TMP_SWITCH' == 0) AND -
         ('LN':PBI'TMP_GROUND_SW' == 0) #THEN #BLOCK
  #SET 'LN':PBI'TMP_SWITCH1'    =  0
  #SET 'LN':PBI'TMP_SWITCH2'    =  0
  #SET 'LN':PBI'TMP_GROUND_SW1' =  0
  #SET 'LN':PBI'TMP_GROUND_SW2' =  0
  #SET 'LN':PBI'TMP_DUMMY1'     =  0
  #SET 'LN':PBI'TMP_DUMMY2'     =  0
#BLOCK_END    
#ELSE_IF (%AI == %COLOR_GROUNDED) #THEN #BLOCK
  #IF      ('LN':PBI'TMP_GROUND_SW' == 0) AND %GROUNDED_PROPAGATE #THEN #BLOCK
    #SET 'LN':PBI'TMP_DUMMY1'     =  0
    #SET 'LN':PBI'TMP_DUMMY2'     =  0
    #SET 'LN':PBI'TMP_GROUND_SW1' =  1
    #SET 'LN':PBI'TMP_GROUND_SW2' =  1
  #BLOCK_END
  #ELSE_IF ('LN':PBI'TMP_GROUND_SW' == 0) AND (NOT %GROUNDED_PROPAGATE) #THEN #BLOCK
    #SET 'LN':PBI'TMP_DUMMY1'     =  0
    #SET 'LN':PBI'TMP_DUMMY2'     =  0  
  #BLOCK_END
#BLOCK_END    
#ELSE_IF (%AI == %COLOR_UNKNOWN) #THEN #BLOCK
  #SET 'LN':PBI'TMP_SWITCH1'    =  0
  #SET 'LN':PBI'TMP_SWITCH2'    =  0
  #SET 'LN':PBI'TMP_GROUND_SW1' =  0
  #SET 'LN':PBI'TMP_GROUND_SW2' =  0
  #SET 'LN':PBI'TMP_DUMMY1'     =  1
  #SET 'LN':PBI'TMP_DUMMY2'     =  1
#BLOCK_END    
#ELSE #BLOCK
  #IF      ('LN':PBI'TMP_SWITCH' == 0) #THEN #BLOCK
    #SET 'LN':PBI'TMP_DUMMY1'  =  0
    #SET 'LN':PBI'TMP_DUMMY2'  =  0
    #SET 'LN':PBI'TMP_SWITCH1' =  1
    #SET 'LN':PBI'TMP_SWITCH2' =  1
  #BLOCK_END
#BLOCK_END

#IF ('LN':PBI'TMP_SWITCH1'    ==  0) AND -
    ('LN':PBI'TMP_SWITCH2'    ==  0) AND -
    ('LN':PBI'TMP_GROUND_SW1' ==  0) AND -
    ('LN':PBI'TMP_GROUND_SW2' ==  0) AND -
    ('LN':PBI'TMP_DUMMY1'     ==  0) AND -
    ('LN':PBI'TMP_DUMMY2'     ==  0) #THEN #BLOCK
  #IF      ('LN':PAI'TMP_PASSIVE1' <> 33) AND ('LN':PAI'TMP_PASSIVE2' == 33) AND ('LN':PAI'TMP_PASSIVE' == 33) #THEN -
    #EXEC FPI_ACTT3:A (@LN=%LN, @IX=%TMP_PASSIVE1, @AI='LN':PAI'TMP_PASSIVE1')
  #ELSE_IF ('LN':PAI'TMP_PASSIVE2' <> 33) AND ('LN':PAI'TMP_PASSIVE1' == 33) AND ('LN':PAI'TMP_PASSIVE' == 33) #THEN -
    #EXEC FPI_ACTT3:A (@LN=%LN, @IX=%TMP_PASSIVE2, @AI='LN':PAI'TMP_PASSIVE2')      
#BLOCK_END