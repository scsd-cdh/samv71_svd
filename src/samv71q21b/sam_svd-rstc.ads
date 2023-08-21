pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21B.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.RSTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  System Reset Key
   type CR_KEYSelect is
     (--  Reset value for the field
      CR_KEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.
      PASSWD)
     with Size => 8;
   for CR_KEYSelect use
     (CR_KEYSelect_Reset => 0,
      PASSWD => 165);

   --  Control Register
   type RSTC_CR_Register is record
      --  Write-only. Processor Reset
      PROCRST       : Boolean := False;
      --  unspecified
      Reserved_1_2  : HAL.UInt2 := 16#0#;
      --  Write-only. External Reset
      EXTRST        : Boolean := False;
      --  unspecified
      Reserved_4_23 : HAL.UInt20 := 16#0#;
      --  Write-only. System Reset Key
      KEY           : CR_KEYSelect := CR_KEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_CR_Register use record
      PROCRST       at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      EXTRST        at 0 range 3 .. 3;
      Reserved_4_23 at 0 range 4 .. 23;
      KEY           at 0 range 24 .. 31;
   end record;

   --  Reset Type
   type SR_RSTTYPSelect is
     (--  First power-up reset
      GENERAL_RST,
      --  Return from Backup Mode
      BACKUP_RST,
      --  Watchdog fault occurred
      WDT_RST,
      --  Processor reset required by the software
      SOFT_RST,
      --  NRST pin detected low
      USER_RST)
     with Size => 3;
   for SR_RSTTYPSelect use
     (GENERAL_RST => 0,
      BACKUP_RST => 1,
      WDT_RST => 2,
      SOFT_RST => 3,
      USER_RST => 4);

   --  Status Register
   type RSTC_SR_Register is record
      --  Read-only. User Reset Status
      URSTS          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Reset Type
      RSTTYP         : SR_RSTTYPSelect;
      --  unspecified
      Reserved_11_15 : HAL.UInt5;
      --  Read-only. NRST Pin Level
      NRSTL          : Boolean;
      --  Read-only. Software Reset Command in Progress
      SRCMP          : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_SR_Register use record
      URSTS          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      RSTTYP         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      NRSTL          at 0 range 16 .. 16;
      SRCMP          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RSTC_MR_ERSTL_Field is HAL.UInt4;

   --  Write Access Password
   type MR_KEYSelect is
     (--  Reset value for the field
      MR_KEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.Always
--  reads as 0.
      PASSWD)
     with Size => 8;
   for MR_KEYSelect use
     (MR_KEYSelect_Reset => 0,
      PASSWD => 165);

   --  Mode Register
   type RSTC_MR_Register is record
      --  User Reset Enable
      URSTEN         : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  User Reset Interrupt Enable
      URSTIEN        : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  External Reset Length
      ERSTL          : RSTC_MR_ERSTL_Field := 16#0#;
      --  unspecified
      Reserved_12_23 : HAL.UInt12 := 16#0#;
      --  Write Access Password
      KEY            : MR_KEYSelect := MR_KEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTC_MR_Register use record
      URSTEN         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      URSTIEN        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ERSTL          at 0 range 8 .. 11;
      Reserved_12_23 at 0 range 12 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset Controller
   type RSTC_Peripheral is record
      --  Control Register
      CR : aliased RSTC_CR_Register;
      --  Status Register
      SR : aliased RSTC_SR_Register;
      --  Mode Register
      MR : aliased RSTC_MR_Register;
   end record
     with Volatile;

   for RSTC_Peripheral use record
      CR at 16#0# range 0 .. 31;
      SR at 16#4# range 0 .. 31;
      MR at 16#8# range 0 .. 31;
   end record;

   --  Reset Controller
   RSTC_Periph : aliased RSTC_Peripheral
     with Import, Address => RSTC_Base;

end SAM_SVD.RSTC;
