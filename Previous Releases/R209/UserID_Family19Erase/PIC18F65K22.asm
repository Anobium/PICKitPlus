;Set up the assembler options (Chip type, clock source, other bits and pieces)
 LIST p=18F65K22, r=DEC
#include <P18F65K22.inc>
 CONFIG WRTD = OFF, MCLRE = OFF, WDTEN = OFF, FOSC = INTIO2

;********************************************************************************

;Set aside memory locations for variables
ID_ADDRESS      EQU     1
ID_ADDRESS_E    EQU     4
ID_ADDRESS_H    EQU     2
ID_ADDRESS_U    EQU     3

;********************************************************************************

;Vectors
        ORG     0
        goto    BASPROGRAMSTART
        ORG     8
        retfie

;********************************************************************************

;Start of program memory page 0
        ORG     12
BASPROGRAMSTART
;Call initialisation routines
        rcall   INITSYS

;Start of the main program
        rcall   ERASEUSERIDS
BASPROGRAMEND
        sleep
        bra     BASPROGRAMEND

;********************************************************************************

ERASEUSERIDS
        clrf    ID_ADDRESS,ACCESS
        clrf    ID_ADDRESS_H,ACCESS
        movlw   32
        movwf   ID_ADDRESS_U,ACCESS
        clrf    ID_ADDRESS_E,ACCESS
        movff   ID_ADDRESS_U,TBLPTRU
        movff   ID_ADDRESS_H,TBLPTRH
        movff   ID_ADDRESS,TBLPTRL
        bsf     EECON1,7,ACCESS
        bcf     EECON1,6,ACCESS
        bsf     EECON1,4,ACCESS
        bsf     EECON1,2,ACCESS
        movlw   85
        movwf   EECON2,ACCESS
        movlw   170
        movwf   EECON2,ACCESS
        bsf     EECON1,1,ACCESS
        bcf     EECON1,2,ACCESS
        clrf    TBLPTRU,ACCESS
        clrf    TBLPTRH,ACCESS
        clrf    TBLPTRL,ACCESS
        return

;********************************************************************************

INITSYS
;osccon type is 104
        bsf     OSCCON,IRCF2,ACCESS
        bsf     OSCCON,IRCF1,ACCESS
        bsf     OSCCON,IRCF0,ACCESS
        bsf     OSCTUNE,PLLEN,ACCESS
;_complete_the_chip_setup_of_bsr,adcs,ansel_and_other_key_setup_registers_or_register_bits
        clrf    BSR,ACCESS
        clrf    TBLPTRU,ACCESS
        bcf     ADCON2,ADFM,ACCESS
        bcf     ADCON0,ADON,ACCESS
        banksel ANCON0
        bcf     ANCON0,ANSEL2,BANKED
        bcf     ANCON0,ANSEL3,BANKED
        bcf     ANCON0,ANSEL4,BANKED
        bcf     ANCON0,ANSEL5,BANKED
        bcf     ANCON0,ANSEL6,BANKED
        bcf     ANCON0,ANSEL7,BANKED
        bcf     ANCON1,ANSEL8,BANKED
        bcf     ANCON1,ANSEL9,BANKED
        bcf     ANCON1,ANSEL10,BANKED
        bcf     ANCON1,ANSEL11,BANKED
        clrf    PORTA,ACCESS
        clrf    PORTB,ACCESS
        clrf    PORTC,ACCESS
        clrf    PORTD,ACCESS
        clrf    PORTE,ACCESS
        clrf    PORTF,ACCESS
        clrf    PORTG,ACCESS
        banksel 0
        return

;********************************************************************************


 END
