pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21B.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.CoreDebug is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Debug Halting Control and Status Register
   type CoreDebug_DHCSR_Register is record
      C_DEBUGEN      : Boolean := False;
      C_HALT         : Boolean := False;
      C_STEP         : Boolean := False;
      C_MASKINTS     : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      C_SNAPSTALL    : Boolean := False;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      S_REGRDY       : Boolean := False;
      S_HALT         : Boolean := False;
      S_SLEEP        : Boolean := False;
      S_LOCKUP       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      S_RETIRE_ST    : Boolean := False;
      S_RESET_ST     : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CoreDebug_DHCSR_Register use record
      C_DEBUGEN      at 0 range 0 .. 0;
      C_HALT         at 0 range 1 .. 1;
      C_STEP         at 0 range 2 .. 2;
      C_MASKINTS     at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      C_SNAPSTALL    at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      S_REGRDY       at 0 range 16 .. 16;
      S_HALT         at 0 range 17 .. 17;
      S_SLEEP        at 0 range 18 .. 18;
      S_LOCKUP       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      S_RETIRE_ST    at 0 range 24 .. 24;
      S_RESET_ST     at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CoreDebug_DCRSR_REGSEL_Field is HAL.UInt5;

   --  Debug Core Register Selector Register
   type CoreDebug_DCRSR_Register is record
      --  Write-only.
      REGSEL         : CoreDebug_DCRSR_REGSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  Write-only.
      REGWnR         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CoreDebug_DCRSR_Register use record
      REGSEL         at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      REGWnR         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Debug Exception and Monitor Control Register
   type CoreDebug_DEMCR_Register is record
      VC_CORERESET   : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      VC_MMERR       : Boolean := False;
      VC_NOCPERR     : Boolean := False;
      VC_CHKERR      : Boolean := False;
      VC_STATERR     : Boolean := False;
      VC_BUSERR      : Boolean := False;
      VC_INTERR      : Boolean := False;
      VC_HARDERR     : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      MON_EN         : Boolean := False;
      MON_PEND       : Boolean := False;
      MON_STEP       : Boolean := False;
      MON_REQ        : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      TRCENA         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CoreDebug_DEMCR_Register use record
      VC_CORERESET   at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      VC_MMERR       at 0 range 4 .. 4;
      VC_NOCPERR     at 0 range 5 .. 5;
      VC_CHKERR      at 0 range 6 .. 6;
      VC_STATERR     at 0 range 7 .. 7;
      VC_BUSERR      at 0 range 8 .. 8;
      VC_INTERR      at 0 range 9 .. 9;
      VC_HARDERR     at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      MON_EN         at 0 range 16 .. 16;
      MON_PEND       at 0 range 17 .. 17;
      MON_STEP       at 0 range 18 .. 18;
      MON_REQ        at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TRCENA         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Core Debug Register
   type CoreDebug_Peripheral is record
      --  Debug Halting Control and Status Register
      DHCSR : aliased CoreDebug_DHCSR_Register;
      --  Debug Core Register Selector Register
      DCRSR : aliased CoreDebug_DCRSR_Register;
      --  Debug Core Register Data Register
      DCRDR : aliased HAL.UInt32;
      --  Debug Exception and Monitor Control Register
      DEMCR : aliased CoreDebug_DEMCR_Register;
   end record
     with Volatile;

   for CoreDebug_Peripheral use record
      DHCSR at 16#F0# range 0 .. 31;
      DCRSR at 16#F4# range 0 .. 31;
      DCRDR at 16#F8# range 0 .. 31;
      DEMCR at 16#FC# range 0 .. 31;
   end record;

   --  Core Debug Register
   CoreDebug_Periph : aliased CoreDebug_Peripheral
     with Import, Address => CoreDebug_Base;

end SAM_SVD.CoreDebug;
