pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21B.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.AES is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type AES_CR_Register is record
      --  Write-only. Start Processing
      START          : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. Software Reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. Random Number Generator Seed Loading
      LOADSEED       : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_CR_Register use record
      START          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SWRST          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      LOADSEED       at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Dual Input Buffer
   type MR_DUALBUFFSelect is
     (--  AES_IDATARx cannot be written during processing of previous block.
      INACTIVE,
      --  AES_IDATARx can be written during processing of previous block when SMOD =
--  2. It speeds up the overall runtime of large files.
      ACTIVE)
     with Size => 1;
   for MR_DUALBUFFSelect use
     (INACTIVE => 0,
      ACTIVE => 1);

   subtype AES_MR_PROCDLY_Field is HAL.UInt4;

   --  Start Mode
   type MR_SMODSelect is
     (--  Manual Mode
      MANUAL_START,
      --  Auto Mode
      AUTO_START,
      --  AES_IDATAR0 access only Auto Mode (DMA)
      IDATAR0_START)
     with Size => 2;
   for MR_SMODSelect use
     (MANUAL_START => 0,
      AUTO_START => 1,
      IDATAR0_START => 2);

   --  Key Size
   type MR_KEYSIZESelect is
     (--  AES Key Size is 128 bits
      AES128,
      --  AES Key Size is 192 bits
      AES192,
      --  AES Key Size is 256 bits
      AES256)
     with Size => 2;
   for MR_KEYSIZESelect use
     (AES128 => 0,
      AES192 => 1,
      AES256 => 2);

   --  Operating Mode
   type MR_OPMODSelect is
     (--  ECB: Electronic Code Book mode
      ECB,
      --  CBC: Cipher Block Chaining mode
      CBC,
      --  OFB: Output Feedback mode
      OFB,
      --  CFB: Cipher Feedback mode
      CFB,
      --  CTR: Counter mode (16-bit internal counter)
      CTR,
      --  GCM: Galois/Counter mode
      GCM)
     with Size => 3;
   for MR_OPMODSelect use
     (ECB => 0,
      CBC => 1,
      OFB => 2,
      CFB => 3,
      CTR => 4,
      GCM => 5);

   --  Cipher Feedback Data Size
   type MR_CFBSSelect is
     (--  128-bit
      SIZE_128BIT,
      --  64-bit
      SIZE_64BIT,
      --  32-bit
      SIZE_32BIT,
      --  16-bit
      SIZE_16BIT,
      --  8-bit
      SIZE_8BIT)
     with Size => 3;
   for MR_CFBSSelect use
     (SIZE_128BIT => 0,
      SIZE_64BIT => 1,
      SIZE_32BIT => 2,
      SIZE_16BIT => 3,
      SIZE_8BIT => 4);

   --  Countermeasure Key
   type MR_CKEYSelect is
     (--  Reset value for the field
      MR_CKEYSelect_Reset,
      --  This field must be written with 0xE to allow CMTYPx bit configuration
--  changes. Any other values will abort the write operation in CMTYPx
--  bits.Always reads as 0.
      PASSWD)
     with Size => 4;
   for MR_CKEYSelect use
     (MR_CKEYSelect_Reset => 0,
      PASSWD => 14);

   --  Mode Register
   type AES_MR_Register is record
      --  Processing Mode
      CIPHER         : Boolean := False;
      --  GCM Automatic Tag Generation Enable
      GTAGEN         : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Dual Input Buffer
      DUALBUFF       : MR_DUALBUFFSelect := SAM_SVD.AES.INACTIVE;
      --  Processing Delay
      PROCDLY        : AES_MR_PROCDLY_Field := 16#0#;
      --  Start Mode
      SMOD           : MR_SMODSelect := SAM_SVD.AES.MANUAL_START;
      --  Key Size
      KEYSIZE        : MR_KEYSIZESelect := SAM_SVD.AES.AES128;
      --  Operating Mode
      OPMOD          : MR_OPMODSelect := SAM_SVD.AES.ECB;
      --  Last Output Data Mode
      LOD            : Boolean := False;
      --  Cipher Feedback Data Size
      CFBS           : MR_CFBSSelect := SAM_SVD.AES.SIZE_128BIT;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Countermeasure Key
      CKEY           : MR_CKEYSelect := MR_CKEYSelect_Reset;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_MR_Register use record
      CIPHER         at 0 range 0 .. 0;
      GTAGEN         at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      DUALBUFF       at 0 range 3 .. 3;
      PROCDLY        at 0 range 4 .. 7;
      SMOD           at 0 range 8 .. 9;
      KEYSIZE        at 0 range 10 .. 11;
      OPMOD          at 0 range 12 .. 14;
      LOD            at 0 range 15 .. 15;
      CFBS           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CKEY           at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Interrupt Enable Register
   type AES_IER_Register is record
      --  Write-only. Data Ready Interrupt Enable
      DATRDY         : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. Unspecified Register Access Detection Interrupt Enable
      URAD           : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. GCM Tag Ready Interrupt Enable
      TAGRDY         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_IER_Register use record
      DATRDY         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      URAD           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      TAGRDY         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Interrupt Disable Register
   type AES_IDR_Register is record
      --  Write-only. Data Ready Interrupt Disable
      DATRDY         : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. Unspecified Register Access Detection Interrupt Disable
      URAD           : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. GCM Tag Ready Interrupt Disable
      TAGRDY         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_IDR_Register use record
      DATRDY         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      URAD           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      TAGRDY         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Interrupt Mask Register
   type AES_IMR_Register is record
      --  Read-only. Data Ready Interrupt Mask
      DATRDY         : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Unspecified Register Access Detection Interrupt Mask
      URAD           : Boolean;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. GCM Tag Ready Interrupt Mask
      TAGRDY         : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_IMR_Register use record
      DATRDY         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      URAD           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      TAGRDY         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Unspecified Register Access (cleared by writing SWRST in AES_CR)
   type ISR_URATSelect is
     (--  Input Data Register written during the data processing when SMOD = 0x2
--  mode.
      IDR_WR_PROCESSING,
      --  Output Data Register read during the data processing.
      ODR_RD_PROCESSING,
      --  Mode Register written during the data processing.
      MR_WR_PROCESSING,
      --  Output Data Register read during the sub-keys generation.
      ODR_RD_SUBKGEN,
      --  Mode Register written during the sub-keys generation.
      MR_WR_SUBKGEN,
      --  Write-only register read access.
      WOR_RD_ACCESS)
     with Size => 4;
   for ISR_URATSelect use
     (IDR_WR_PROCESSING => 0,
      ODR_RD_PROCESSING => 1,
      MR_WR_PROCESSING => 2,
      ODR_RD_SUBKGEN => 3,
      MR_WR_SUBKGEN => 4,
      WOR_RD_ACCESS => 5);

   --  Interrupt Status Register
   type AES_ISR_Register is record
      --  Read-only. Data Ready (cleared by setting bit START or bit SWRST in
      --  AES_CR or by reading AES_ODATARx)
      DATRDY         : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Unspecified Register Access Detection Status (cleared by
      --  writing SWRST in AES_CR)
      URAD           : Boolean;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. Unspecified Register Access (cleared by writing SWRST in
      --  AES_CR)
      URAT           : ISR_URATSelect;
      --  Read-only. GCM Tag Ready
      TAGRDY         : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AES_ISR_Register use record
      DATRDY         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      URAD           at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      URAT           at 0 range 12 .. 15;
      TAGRDY         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Key Word Register

   --  Key Word Register
   type AES_KEYWR_Registers is array (0 .. 7) of HAL.UInt32;

   --  Input Data Register

   --  Input Data Register
   type AES_IDATAR_Registers is array (0 .. 3) of HAL.UInt32;

   --  Output Data Register

   --  Output Data Register
   type AES_ODATAR_Registers is array (0 .. 3) of HAL.UInt32;

   --  Initialization Vector Register

   --  Initialization Vector Register
   type AES_IVR_Registers is array (0 .. 3) of HAL.UInt32;

   --  GCM Intermediate Hash Word Register

   --  GCM Intermediate Hash Word Register
   type AES_GHASHR_Registers is array (0 .. 3) of HAL.UInt32;

   --  GCM Authentication Tag Word Register

   --  GCM Authentication Tag Word Register
   type AES_TAGR_Registers is array (0 .. 3) of HAL.UInt32;

   --  GCM H Word Register

   --  GCM H Word Register
   type AES_GCMHR_Registers is array (0 .. 3) of HAL.UInt32;

   -----------------
   -- Peripherals --
   -----------------

   --  Advanced Encryption Standard
   type AES_Peripheral is record
      --  Control Register
      CR      : aliased AES_CR_Register;
      --  Mode Register
      MR      : aliased AES_MR_Register;
      --  Interrupt Enable Register
      IER     : aliased AES_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased AES_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased AES_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased AES_ISR_Register;
      --  Key Word Register
      KEYWR   : aliased AES_KEYWR_Registers;
      --  Input Data Register
      IDATAR  : aliased AES_IDATAR_Registers;
      --  Output Data Register
      ODATAR  : aliased AES_ODATAR_Registers;
      --  Initialization Vector Register
      IVR     : aliased AES_IVR_Registers;
      --  Additional Authenticated Data Length Register
      AADLENR : aliased HAL.UInt32;
      --  Plaintext/Ciphertext Length Register
      CLENR   : aliased HAL.UInt32;
      --  GCM Intermediate Hash Word Register
      GHASHR  : aliased AES_GHASHR_Registers;
      --  GCM Authentication Tag Word Register
      TAGR    : aliased AES_TAGR_Registers;
      --  GCM Encryption Counter Value Register
      CTRR    : aliased HAL.UInt32;
      --  GCM H Word Register
      GCMHR   : aliased AES_GCMHR_Registers;
   end record
     with Volatile;

   for AES_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      MR      at 16#4# range 0 .. 31;
      IER     at 16#10# range 0 .. 31;
      IDR     at 16#14# range 0 .. 31;
      IMR     at 16#18# range 0 .. 31;
      ISR     at 16#1C# range 0 .. 31;
      KEYWR   at 16#20# range 0 .. 255;
      IDATAR  at 16#40# range 0 .. 127;
      ODATAR  at 16#50# range 0 .. 127;
      IVR     at 16#60# range 0 .. 127;
      AADLENR at 16#70# range 0 .. 31;
      CLENR   at 16#74# range 0 .. 31;
      GHASHR  at 16#78# range 0 .. 127;
      TAGR    at 16#88# range 0 .. 127;
      CTRR    at 16#98# range 0 .. 31;
      GCMHR   at 16#9C# range 0 .. 127;
   end record;

   --  Advanced Encryption Standard
   AES_Periph : aliased AES_Peripheral
     with Import, Address => AES_Base;

end SAM_SVD.AES;
