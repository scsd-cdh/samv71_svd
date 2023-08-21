pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21B.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.USBHS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype USBHS_DEVCTRL_UADD_Field is HAL.UInt7;

   --  Mode Configuration
   type DEVCTRL_SPDCONFSelect is
     (--  The peripheral starts in Full-speed mode and performs a high-speed reset to
--  switch to High-speed mode if the host is high-speed-capable.
      NORMAL,
      --  For a better consumption, if high speed is not needed.
      LOW_POWER,
      --  Forced high speed.
      HIGH_SPEED,
      --  The peripheral remains in Full-speed mode whatever the host speed
--  capability.
      FORCED_FS)
     with Size => 2;
   for DEVCTRL_SPDCONFSelect use
     (NORMAL => 0,
      LOW_POWER => 1,
      HIGH_SPEED => 2,
      FORCED_FS => 3);

   --  Device General Control Register
   type USBHS_DEVCTRL_Register is record
      --  USB Address
      UADD           : USBHS_DEVCTRL_UADD_Field := 16#0#;
      --  Address Enable
      ADDEN          : Boolean := False;
      --  Detach
      DETACH         : Boolean := False;
      --  Remote Wake-Up
      RMWKUP         : Boolean := False;
      --  Mode Configuration
      SPDCONF        : DEVCTRL_SPDCONFSelect := SAM_SVD.USBHS.NORMAL;
      --  Low-Speed Mode Force
      LS             : Boolean := False;
      --  Test mode J
      TSTJ           : Boolean := False;
      --  Test mode K
      TSTK           : Boolean := False;
      --  Test packet mode
      TSTPCKT        : Boolean := False;
      --  Specific Operational mode
      OPMODE2        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVCTRL_Register use record
      UADD           at 0 range 0 .. 6;
      ADDEN          at 0 range 7 .. 7;
      DETACH         at 0 range 8 .. 8;
      RMWKUP         at 0 range 9 .. 9;
      SPDCONF        at 0 range 10 .. 11;
      LS             at 0 range 12 .. 12;
      TSTJ           at 0 range 13 .. 13;
      TSTK           at 0 range 14 .. 14;
      TSTPCKT        at 0 range 15 .. 15;
      OPMODE2        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Device Global Interrupt Status Register
   type USBHS_DEVISR_Register is record
      --  Read-only. Suspend Interrupt
      SUSP           : Boolean;
      --  Read-only. Micro Start of Frame Interrupt
      MSOF           : Boolean;
      --  Read-only. Start of Frame Interrupt
      SOF            : Boolean;
      --  Read-only. End of Reset Interrupt
      EORST          : Boolean;
      --  Read-only. Wake-Up Interrupt
      WAKEUP         : Boolean;
      --  Read-only. End of Resume Interrupt
      EORSM          : Boolean;
      --  Read-only. Upstream Resume Interrupt
      UPRSM          : Boolean;
      --  unspecified
      Reserved_7_11  : HAL.UInt5;
      --  Read-only. Endpoint 0 Interrupt
      PEP_0          : Boolean;
      --  Read-only. Endpoint 1 Interrupt
      PEP_1          : Boolean;
      --  Read-only. Endpoint 2 Interrupt
      PEP_2          : Boolean;
      --  Read-only. Endpoint 3 Interrupt
      PEP_3          : Boolean;
      --  Read-only. Endpoint 4 Interrupt
      PEP_4          : Boolean;
      --  Read-only. Endpoint 5 Interrupt
      PEP_5          : Boolean;
      --  Read-only. Endpoint 6 Interrupt
      PEP_6          : Boolean;
      --  Read-only. Endpoint 7 Interrupt
      PEP_7          : Boolean;
      --  Read-only. Endpoint 8 Interrupt
      PEP_8          : Boolean;
      --  Read-only. Endpoint 9 Interrupt
      PEP_9          : Boolean;
      --  unspecified
      Reserved_22_24 : HAL.UInt3;
      --  Read-only. DMA Channel 1 Interrupt
      DMA_1          : Boolean;
      --  Read-only. DMA Channel 2 Interrupt
      DMA_2          : Boolean;
      --  Read-only. DMA Channel 3 Interrupt
      DMA_3          : Boolean;
      --  Read-only. DMA Channel 4 Interrupt
      DMA_4          : Boolean;
      --  Read-only. DMA Channel 5 Interrupt
      DMA_5          : Boolean;
      --  Read-only. DMA Channel 6 Interrupt
      DMA_6          : Boolean;
      --  Read-only. DMA Channel 7 Interrupt
      DMA_7          : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVISR_Register use record
      SUSP           at 0 range 0 .. 0;
      MSOF           at 0 range 1 .. 1;
      SOF            at 0 range 2 .. 2;
      EORST          at 0 range 3 .. 3;
      WAKEUP         at 0 range 4 .. 4;
      EORSM          at 0 range 5 .. 5;
      UPRSM          at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      PEP_0          at 0 range 12 .. 12;
      PEP_1          at 0 range 13 .. 13;
      PEP_2          at 0 range 14 .. 14;
      PEP_3          at 0 range 15 .. 15;
      PEP_4          at 0 range 16 .. 16;
      PEP_5          at 0 range 17 .. 17;
      PEP_6          at 0 range 18 .. 18;
      PEP_7          at 0 range 19 .. 19;
      PEP_8          at 0 range 20 .. 20;
      PEP_9          at 0 range 21 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      DMA_1          at 0 range 25 .. 25;
      DMA_2          at 0 range 26 .. 26;
      DMA_3          at 0 range 27 .. 27;
      DMA_4          at 0 range 28 .. 28;
      DMA_5          at 0 range 29 .. 29;
      DMA_6          at 0 range 30 .. 30;
      DMA_7          at 0 range 31 .. 31;
   end record;

   --  Device Global Interrupt Clear Register
   type USBHS_DEVICR_Register is record
      --  Write-only. Suspend Interrupt Clear
      SUSPC         : Boolean := False;
      --  Write-only. Micro Start of Frame Interrupt Clear
      MSOFC         : Boolean := False;
      --  Write-only. Start of Frame Interrupt Clear
      SOFC          : Boolean := False;
      --  Write-only. End of Reset Interrupt Clear
      EORSTC        : Boolean := False;
      --  Write-only. Wake-Up Interrupt Clear
      WAKEUPC       : Boolean := False;
      --  Write-only. End of Resume Interrupt Clear
      EORSMC        : Boolean := False;
      --  Write-only. Upstream Resume Interrupt Clear
      UPRSMC        : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVICR_Register use record
      SUSPC         at 0 range 0 .. 0;
      MSOFC         at 0 range 1 .. 1;
      SOFC          at 0 range 2 .. 2;
      EORSTC        at 0 range 3 .. 3;
      WAKEUPC       at 0 range 4 .. 4;
      EORSMC        at 0 range 5 .. 5;
      UPRSMC        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Device Global Interrupt Set Register
   type USBHS_DEVIFR_Register is record
      --  Write-only. Suspend Interrupt Set
      SUSPS         : Boolean := False;
      --  Write-only. Micro Start of Frame Interrupt Set
      MSOFS         : Boolean := False;
      --  Write-only. Start of Frame Interrupt Set
      SOFS          : Boolean := False;
      --  Write-only. End of Reset Interrupt Set
      EORSTS        : Boolean := False;
      --  Write-only. Wake-Up Interrupt Set
      WAKEUPS       : Boolean := False;
      --  Write-only. End of Resume Interrupt Set
      EORSMS        : Boolean := False;
      --  Write-only. Upstream Resume Interrupt Set
      UPRSMS        : Boolean := False;
      --  unspecified
      Reserved_7_24 : HAL.UInt18 := 16#0#;
      --  Write-only. DMA Channel 1 Interrupt Set
      DMA_1         : Boolean := False;
      --  Write-only. DMA Channel 2 Interrupt Set
      DMA_2         : Boolean := False;
      --  Write-only. DMA Channel 3 Interrupt Set
      DMA_3         : Boolean := False;
      --  Write-only. DMA Channel 4 Interrupt Set
      DMA_4         : Boolean := False;
      --  Write-only. DMA Channel 5 Interrupt Set
      DMA_5         : Boolean := False;
      --  Write-only. DMA Channel 6 Interrupt Set
      DMA_6         : Boolean := False;
      --  Write-only. DMA Channel 7 Interrupt Set
      DMA_7         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVIFR_Register use record
      SUSPS         at 0 range 0 .. 0;
      MSOFS         at 0 range 1 .. 1;
      SOFS          at 0 range 2 .. 2;
      EORSTS        at 0 range 3 .. 3;
      WAKEUPS       at 0 range 4 .. 4;
      EORSMS        at 0 range 5 .. 5;
      UPRSMS        at 0 range 6 .. 6;
      Reserved_7_24 at 0 range 7 .. 24;
      DMA_1         at 0 range 25 .. 25;
      DMA_2         at 0 range 26 .. 26;
      DMA_3         at 0 range 27 .. 27;
      DMA_4         at 0 range 28 .. 28;
      DMA_5         at 0 range 29 .. 29;
      DMA_6         at 0 range 30 .. 30;
      DMA_7         at 0 range 31 .. 31;
   end record;

   --  Device Global Interrupt Mask Register
   type USBHS_DEVIMR_Register is record
      --  Read-only. Suspend Interrupt Mask
      SUSPE          : Boolean;
      --  Read-only. Micro Start of Frame Interrupt Mask
      MSOFE          : Boolean;
      --  Read-only. Start of Frame Interrupt Mask
      SOFE           : Boolean;
      --  Read-only. End of Reset Interrupt Mask
      EORSTE         : Boolean;
      --  Read-only. Wake-Up Interrupt Mask
      WAKEUPE        : Boolean;
      --  Read-only. End of Resume Interrupt Mask
      EORSME         : Boolean;
      --  Read-only. Upstream Resume Interrupt Mask
      UPRSME         : Boolean;
      --  unspecified
      Reserved_7_11  : HAL.UInt5;
      --  Read-only. Endpoint 0 Interrupt Mask
      PEP_0          : Boolean;
      --  Read-only. Endpoint 1 Interrupt Mask
      PEP_1          : Boolean;
      --  Read-only. Endpoint 2 Interrupt Mask
      PEP_2          : Boolean;
      --  Read-only. Endpoint 3 Interrupt Mask
      PEP_3          : Boolean;
      --  Read-only. Endpoint 4 Interrupt Mask
      PEP_4          : Boolean;
      --  Read-only. Endpoint 5 Interrupt Mask
      PEP_5          : Boolean;
      --  Read-only. Endpoint 6 Interrupt Mask
      PEP_6          : Boolean;
      --  Read-only. Endpoint 7 Interrupt Mask
      PEP_7          : Boolean;
      --  Read-only. Endpoint 8 Interrupt Mask
      PEP_8          : Boolean;
      --  Read-only. Endpoint 9 Interrupt Mask
      PEP_9          : Boolean;
      --  unspecified
      Reserved_22_24 : HAL.UInt3;
      --  Read-only. DMA Channel 1 Interrupt Mask
      DMA_1          : Boolean;
      --  Read-only. DMA Channel 2 Interrupt Mask
      DMA_2          : Boolean;
      --  Read-only. DMA Channel 3 Interrupt Mask
      DMA_3          : Boolean;
      --  Read-only. DMA Channel 4 Interrupt Mask
      DMA_4          : Boolean;
      --  Read-only. DMA Channel 5 Interrupt Mask
      DMA_5          : Boolean;
      --  Read-only. DMA Channel 6 Interrupt Mask
      DMA_6          : Boolean;
      --  Read-only. DMA Channel 7 Interrupt Mask
      DMA_7          : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVIMR_Register use record
      SUSPE          at 0 range 0 .. 0;
      MSOFE          at 0 range 1 .. 1;
      SOFE           at 0 range 2 .. 2;
      EORSTE         at 0 range 3 .. 3;
      WAKEUPE        at 0 range 4 .. 4;
      EORSME         at 0 range 5 .. 5;
      UPRSME         at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      PEP_0          at 0 range 12 .. 12;
      PEP_1          at 0 range 13 .. 13;
      PEP_2          at 0 range 14 .. 14;
      PEP_3          at 0 range 15 .. 15;
      PEP_4          at 0 range 16 .. 16;
      PEP_5          at 0 range 17 .. 17;
      PEP_6          at 0 range 18 .. 18;
      PEP_7          at 0 range 19 .. 19;
      PEP_8          at 0 range 20 .. 20;
      PEP_9          at 0 range 21 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      DMA_1          at 0 range 25 .. 25;
      DMA_2          at 0 range 26 .. 26;
      DMA_3          at 0 range 27 .. 27;
      DMA_4          at 0 range 28 .. 28;
      DMA_5          at 0 range 29 .. 29;
      DMA_6          at 0 range 30 .. 30;
      DMA_7          at 0 range 31 .. 31;
   end record;

   --  Device Global Interrupt Disable Register
   type USBHS_DEVIDR_Register is record
      --  Write-only. Suspend Interrupt Disable
      SUSPEC         : Boolean := False;
      --  Write-only. Micro Start of Frame Interrupt Disable
      MSOFEC         : Boolean := False;
      --  Write-only. Start of Frame Interrupt Disable
      SOFEC          : Boolean := False;
      --  Write-only. End of Reset Interrupt Disable
      EORSTEC        : Boolean := False;
      --  Write-only. Wake-Up Interrupt Disable
      WAKEUPEC       : Boolean := False;
      --  Write-only. End of Resume Interrupt Disable
      EORSMEC        : Boolean := False;
      --  Write-only. Upstream Resume Interrupt Disable
      UPRSMEC        : Boolean := False;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Write-only. Endpoint 0 Interrupt Disable
      PEP_0          : Boolean := False;
      --  Write-only. Endpoint 1 Interrupt Disable
      PEP_1          : Boolean := False;
      --  Write-only. Endpoint 2 Interrupt Disable
      PEP_2          : Boolean := False;
      --  Write-only. Endpoint 3 Interrupt Disable
      PEP_3          : Boolean := False;
      --  Write-only. Endpoint 4 Interrupt Disable
      PEP_4          : Boolean := False;
      --  Write-only. Endpoint 5 Interrupt Disable
      PEP_5          : Boolean := False;
      --  Write-only. Endpoint 6 Interrupt Disable
      PEP_6          : Boolean := False;
      --  Write-only. Endpoint 7 Interrupt Disable
      PEP_7          : Boolean := False;
      --  Write-only. Endpoint 8 Interrupt Disable
      PEP_8          : Boolean := False;
      --  Write-only. Endpoint 9 Interrupt Disable
      PEP_9          : Boolean := False;
      --  unspecified
      Reserved_22_24 : HAL.UInt3 := 16#0#;
      --  Write-only. DMA Channel 1 Interrupt Disable
      DMA_1          : Boolean := False;
      --  Write-only. DMA Channel 2 Interrupt Disable
      DMA_2          : Boolean := False;
      --  Write-only. DMA Channel 3 Interrupt Disable
      DMA_3          : Boolean := False;
      --  Write-only. DMA Channel 4 Interrupt Disable
      DMA_4          : Boolean := False;
      --  Write-only. DMA Channel 5 Interrupt Disable
      DMA_5          : Boolean := False;
      --  Write-only. DMA Channel 6 Interrupt Disable
      DMA_6          : Boolean := False;
      --  Write-only. DMA Channel 7 Interrupt Disable
      DMA_7          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVIDR_Register use record
      SUSPEC         at 0 range 0 .. 0;
      MSOFEC         at 0 range 1 .. 1;
      SOFEC          at 0 range 2 .. 2;
      EORSTEC        at 0 range 3 .. 3;
      WAKEUPEC       at 0 range 4 .. 4;
      EORSMEC        at 0 range 5 .. 5;
      UPRSMEC        at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      PEP_0          at 0 range 12 .. 12;
      PEP_1          at 0 range 13 .. 13;
      PEP_2          at 0 range 14 .. 14;
      PEP_3          at 0 range 15 .. 15;
      PEP_4          at 0 range 16 .. 16;
      PEP_5          at 0 range 17 .. 17;
      PEP_6          at 0 range 18 .. 18;
      PEP_7          at 0 range 19 .. 19;
      PEP_8          at 0 range 20 .. 20;
      PEP_9          at 0 range 21 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      DMA_1          at 0 range 25 .. 25;
      DMA_2          at 0 range 26 .. 26;
      DMA_3          at 0 range 27 .. 27;
      DMA_4          at 0 range 28 .. 28;
      DMA_5          at 0 range 29 .. 29;
      DMA_6          at 0 range 30 .. 30;
      DMA_7          at 0 range 31 .. 31;
   end record;

   --  Device Global Interrupt Enable Register
   type USBHS_DEVIER_Register is record
      --  Write-only. Suspend Interrupt Enable
      SUSPES         : Boolean := False;
      --  Write-only. Micro Start of Frame Interrupt Enable
      MSOFES         : Boolean := False;
      --  Write-only. Start of Frame Interrupt Enable
      SOFES          : Boolean := False;
      --  Write-only. End of Reset Interrupt Enable
      EORSTES        : Boolean := False;
      --  Write-only. Wake-Up Interrupt Enable
      WAKEUPES       : Boolean := False;
      --  Write-only. End of Resume Interrupt Enable
      EORSMES        : Boolean := False;
      --  Write-only. Upstream Resume Interrupt Enable
      UPRSMES        : Boolean := False;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Write-only. Endpoint 0 Interrupt Enable
      PEP_0          : Boolean := False;
      --  Write-only. Endpoint 1 Interrupt Enable
      PEP_1          : Boolean := False;
      --  Write-only. Endpoint 2 Interrupt Enable
      PEP_2          : Boolean := False;
      --  Write-only. Endpoint 3 Interrupt Enable
      PEP_3          : Boolean := False;
      --  Write-only. Endpoint 4 Interrupt Enable
      PEP_4          : Boolean := False;
      --  Write-only. Endpoint 5 Interrupt Enable
      PEP_5          : Boolean := False;
      --  Write-only. Endpoint 6 Interrupt Enable
      PEP_6          : Boolean := False;
      --  Write-only. Endpoint 7 Interrupt Enable
      PEP_7          : Boolean := False;
      --  Write-only. Endpoint 8 Interrupt Enable
      PEP_8          : Boolean := False;
      --  Write-only. Endpoint 9 Interrupt Enable
      PEP_9          : Boolean := False;
      --  unspecified
      Reserved_22_24 : HAL.UInt3 := 16#0#;
      --  Write-only. DMA Channel 1 Interrupt Enable
      DMA_1          : Boolean := False;
      --  Write-only. DMA Channel 2 Interrupt Enable
      DMA_2          : Boolean := False;
      --  Write-only. DMA Channel 3 Interrupt Enable
      DMA_3          : Boolean := False;
      --  Write-only. DMA Channel 4 Interrupt Enable
      DMA_4          : Boolean := False;
      --  Write-only. DMA Channel 5 Interrupt Enable
      DMA_5          : Boolean := False;
      --  Write-only. DMA Channel 6 Interrupt Enable
      DMA_6          : Boolean := False;
      --  Write-only. DMA Channel 7 Interrupt Enable
      DMA_7          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVIER_Register use record
      SUSPES         at 0 range 0 .. 0;
      MSOFES         at 0 range 1 .. 1;
      SOFES          at 0 range 2 .. 2;
      EORSTES        at 0 range 3 .. 3;
      WAKEUPES       at 0 range 4 .. 4;
      EORSMES        at 0 range 5 .. 5;
      UPRSMES        at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      PEP_0          at 0 range 12 .. 12;
      PEP_1          at 0 range 13 .. 13;
      PEP_2          at 0 range 14 .. 14;
      PEP_3          at 0 range 15 .. 15;
      PEP_4          at 0 range 16 .. 16;
      PEP_5          at 0 range 17 .. 17;
      PEP_6          at 0 range 18 .. 18;
      PEP_7          at 0 range 19 .. 19;
      PEP_8          at 0 range 20 .. 20;
      PEP_9          at 0 range 21 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      DMA_1          at 0 range 25 .. 25;
      DMA_2          at 0 range 26 .. 26;
      DMA_3          at 0 range 27 .. 27;
      DMA_4          at 0 range 28 .. 28;
      DMA_5          at 0 range 29 .. 29;
      DMA_6          at 0 range 30 .. 30;
      DMA_7          at 0 range 31 .. 31;
   end record;

   --  USBHS_DEVEPT_EPEN array
   type USBHS_DEVEPT_EPEN_Field_Array is array (0 .. 9) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for USBHS_DEVEPT_EPEN
   type USBHS_DEVEPT_EPEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPEN as a value
            Val : HAL.UInt10;
         when True =>
            --  EPEN as an array
            Arr : USBHS_DEVEPT_EPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for USBHS_DEVEPT_EPEN_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  USBHS_DEVEPT_EPRST array
   type USBHS_DEVEPT_EPRST_Field_Array is array (0 .. 9) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for USBHS_DEVEPT_EPRST
   type USBHS_DEVEPT_EPRST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPRST as a value
            Val : HAL.UInt10;
         when True =>
            --  EPRST as an array
            Arr : USBHS_DEVEPT_EPRST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for USBHS_DEVEPT_EPRST_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  Device Endpoint Register
   type USBHS_DEVEPT_Register is record
      --  Endpoint 0 Enable
      EPEN           : USBHS_DEVEPT_EPEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Endpoint 0 Reset
      EPRST          : USBHS_DEVEPT_EPRST_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPT_Register use record
      EPEN           at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      EPRST          at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBHS_DEVFNUM_MFNUM_Field is HAL.UInt3;
   subtype USBHS_DEVFNUM_FNUM_Field is HAL.UInt11;

   --  Device Frame Number Register
   type USBHS_DEVFNUM_Register is record
      --  Read-only. Micro Frame Number
      MFNUM          : USBHS_DEVFNUM_MFNUM_Field;
      --  Read-only. Frame Number
      FNUM           : USBHS_DEVFNUM_FNUM_Field;
      --  unspecified
      Reserved_14_14 : HAL.Bit;
      --  Read-only. Frame Number CRC Error
      FNCERR         : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVFNUM_Register use record
      MFNUM          at 0 range 0 .. 2;
      FNUM           at 0 range 3 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      FNCERR         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Endpoint Banks
   type DEVEPTCFG_EPBKSelect is
     (--  Single-bank endpoint
      Val_1_BANK,
      --  Double-bank endpoint
      Val_2_BANK,
      --  Triple-bank endpoint
      Val_3_BANK)
     with Size => 2;
   for DEVEPTCFG_EPBKSelect use
     (Val_1_BANK => 0,
      Val_2_BANK => 1,
      Val_3_BANK => 2);

   --  Endpoint Size
   type DEVEPTCFG_EPSIZESelect is
     (--  8 bytes
      Val_8_BYTE,
      --  16 bytes
      Val_16_BYTE,
      --  32 bytes
      Val_32_BYTE,
      --  64 bytes
      Val_64_BYTE,
      --  128 bytes
      Val_128_BYTE,
      --  256 bytes
      Val_256_BYTE,
      --  512 bytes
      Val_512_BYTE,
      --  1024 bytes
      Val_1024_BYTE)
     with Size => 3;
   for DEVEPTCFG_EPSIZESelect use
     (Val_8_BYTE => 0,
      Val_16_BYTE => 1,
      Val_32_BYTE => 2,
      Val_64_BYTE => 3,
      Val_128_BYTE => 4,
      Val_256_BYTE => 5,
      Val_512_BYTE => 6,
      Val_1024_BYTE => 7);

   --  Endpoint Direction
   type DEVEPTCFG_EPDIRSelect is
     (--  The endpoint direction is OUT.
      OUT_k,
      --  The endpoint direction is IN (nor for control endpoints).
      IN_k)
     with Size => 1;
   for DEVEPTCFG_EPDIRSelect use
     (OUT_k => 0,
      IN_k => 1);

   --  Endpoint Type
   type DEVEPTCFG_EPTYPESelect is
     (--  Control
      CTRL,
      --  Isochronous
      ISO,
      --  Bulk
      BLK,
      --  Interrupt
      INTRPT)
     with Size => 2;
   for DEVEPTCFG_EPTYPESelect use
     (CTRL => 0,
      ISO => 1,
      BLK => 2,
      INTRPT => 3);

   --  Number of transactions per microframe for isochronous endpoint
   type DEVEPTCFG_NBTRANSSelect is
     (--  Reserved to endpoint that does not have the high-bandwidth isochronous
--  capability.
      Val_0_TRANS,
      --  Default value: one transaction per microframe.
      Val_1_TRANS,
      --  Two transactions per microframe. This endpoint should be configured as
--  double-bank.
      Val_2_TRANS,
      --  Three transactions per microframe. This endpoint should be configured as
--  triple-bank.
      Val_3_TRANS)
     with Size => 2;
   for DEVEPTCFG_NBTRANSSelect use
     (Val_0_TRANS => 0,
      Val_1_TRANS => 1,
      Val_2_TRANS => 2,
      Val_3_TRANS => 3);

   --  Device Endpoint Configuration Register
   type USBHS_DEVEPTCFG_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Endpoint Memory Allocate
      ALLOC          : Boolean := False;
      --  Endpoint Banks
      EPBK           : DEVEPTCFG_EPBKSelect := SAM_SVD.USBHS.Val_1_BANK;
      --  Endpoint Size
      EPSIZE         : DEVEPTCFG_EPSIZESelect := SAM_SVD.USBHS.Val_8_BYTE;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Endpoint Direction
      EPDIR          : DEVEPTCFG_EPDIRSelect := SAM_SVD.USBHS.OUT_k;
      --  Automatic Switch
      AUTOSW         : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Endpoint Type
      EPTYPE         : DEVEPTCFG_EPTYPESelect := SAM_SVD.USBHS.CTRL;
      --  Number of transactions per microframe for isochronous endpoint
      NBTRANS        : DEVEPTCFG_NBTRANSSelect := SAM_SVD.USBHS.Val_0_TRANS;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTCFG_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ALLOC          at 0 range 1 .. 1;
      EPBK           at 0 range 2 .. 3;
      EPSIZE         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EPDIR          at 0 range 8 .. 8;
      AUTOSW         at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      EPTYPE         at 0 range 11 .. 12;
      NBTRANS        at 0 range 13 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Device Endpoint Configuration Register
   type USBHS_DEVEPTCFG_Registers is array (0 .. 9)
     of USBHS_DEVEPTCFG_Register;

   --  Data Toggle Sequence
   type DEVEPTISR_CTRL_MODE_DTSEQSelect is
     (--  Data0 toggle sequence
      DATA0,
      --  Data1 toggle sequence
      DATA1,
      --  Reserved for high-bandwidth isochronous endpoint
      DATA2,
      --  Reserved for high-bandwidth isochronous endpoint
      MDATA)
     with Size => 2;
   for DEVEPTISR_CTRL_MODE_DTSEQSelect use
     (DATA0 => 0,
      DATA1 => 1,
      DATA2 => 2,
      MDATA => 3);

   --  Number of Busy Banks
   type DEVEPTISR_CTRL_MODE_NBUSYBKSelect is
     (--  0 busy bank (all banks free)
      Val_0_BUSY,
      --  1 busy bank
      Val_1_BUSY,
      --  2 busy banks
      Val_2_BUSY,
      --  3 busy banks
      Val_3_BUSY)
     with Size => 2;
   for DEVEPTISR_CTRL_MODE_NBUSYBKSelect use
     (Val_0_BUSY => 0,
      Val_1_BUSY => 1,
      Val_2_BUSY => 2,
      Val_3_BUSY => 3);

   --  Current Bank
   type DEVEPTISR_CTRL_MODE_CURRBKSelect is
     (--  Current bank is bank0
      BANK0,
      --  Current bank is bank1
      BANK1,
      --  Current bank is bank2
      BANK2)
     with Size => 2;
   for DEVEPTISR_CTRL_MODE_CURRBKSelect use
     (BANK0 => 0,
      BANK1 => 1,
      BANK2 => 2);

   subtype USBHS_DEVEPTISR_CTRL_MODE_BYCT_Field is HAL.UInt11;

   --  Device Endpoint Interrupt Status Register
   type USBHS_DEVEPTISR_CTRL_MODE_Register is record
      --  Read-only. Transmitted IN Data Interrupt
      TXINI          : Boolean;
      --  Read-only. Received OUT Data Interrupt
      RXOUTI         : Boolean;
      --  Read-only. Received SETUP Interrupt
      RXSTPI         : Boolean;
      --  Read-only. NAKed OUT Interrupt
      NAKOUTI        : Boolean;
      --  Read-only. NAKed IN Interrupt
      NAKINI         : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFI         : Boolean;
      --  Read-only. STALLed Interrupt
      STALLEDI       : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKET    : Boolean;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : DEVEPTISR_CTRL_MODE_DTSEQSelect;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Number of Busy Banks
      NBUSYBK        : DEVEPTISR_CTRL_MODE_NBUSYBKSelect;
      --  Read-only. Current Bank
      CURRBK         : DEVEPTISR_CTRL_MODE_CURRBKSelect;
      --  Read-only. Read/Write Allowed
      RWALL          : Boolean;
      --  Read-only. Control Direction
      CTRLDIR        : Boolean;
      --  Read-only. Configuration OK Status
      CFGOK          : Boolean;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. Byte Count
      BYCT           : USBHS_DEVEPTISR_CTRL_MODE_BYCT_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTISR_CTRL_MODE_Register use record
      TXINI          at 0 range 0 .. 0;
      RXOUTI         at 0 range 1 .. 1;
      RXSTPI         at 0 range 2 .. 2;
      NAKOUTI        at 0 range 3 .. 3;
      NAKINI         at 0 range 4 .. 4;
      OVERFI         at 0 range 5 .. 5;
      STALLEDI       at 0 range 6 .. 6;
      SHORTPACKET    at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      RWALL          at 0 range 16 .. 16;
      CTRLDIR        at 0 range 17 .. 17;
      CFGOK          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      BYCT           at 0 range 20 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Device Endpoint Interrupt Status Register
   type USBHS_DEVEPTISR_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTISR_CTRL_MODE_Register;

   --  Data Toggle Sequence
   type DEVEPTISR_ISO_MODE_DTSEQSelect is
     (--  Data0 toggle sequence
      DATA0,
      --  Data1 toggle sequence
      DATA1,
      --  Reserved for high-bandwidth isochronous endpoint
      DATA2,
      --  Reserved for high-bandwidth isochronous endpoint
      MDATA)
     with Size => 2;
   for DEVEPTISR_ISO_MODE_DTSEQSelect use
     (DATA0 => 0,
      DATA1 => 1,
      DATA2 => 2,
      MDATA => 3);

   --  Number of Busy Banks
   type DEVEPTISR_ISO_MODE_NBUSYBKSelect is
     (--  0 busy bank (all banks free)
      Val_0_BUSY,
      --  1 busy bank
      Val_1_BUSY,
      --  2 busy banks
      Val_2_BUSY,
      --  3 busy banks
      Val_3_BUSY)
     with Size => 2;
   for DEVEPTISR_ISO_MODE_NBUSYBKSelect use
     (Val_0_BUSY => 0,
      Val_1_BUSY => 1,
      Val_2_BUSY => 2,
      Val_3_BUSY => 3);

   --  Current Bank
   type DEVEPTISR_ISO_MODE_CURRBKSelect is
     (--  Current bank is bank0
      BANK0,
      --  Current bank is bank1
      BANK1,
      --  Current bank is bank2
      BANK2)
     with Size => 2;
   for DEVEPTISR_ISO_MODE_CURRBKSelect use
     (BANK0 => 0,
      BANK1 => 1,
      BANK2 => 2);

   subtype USBHS_DEVEPTISR_ISO_MODE_BYCT_Field is HAL.UInt11;

   --  Device Endpoint Interrupt Status Register
   type USBHS_DEVEPTISR_ISO_MODE_Register is record
      --  Read-only. Transmitted IN Data Interrupt
      TXINI          : Boolean;
      --  Read-only. Received OUT Data Interrupt
      RXOUTI         : Boolean;
      --  Read-only. Underflow Interrupt
      UNDERFI        : Boolean;
      --  Read-only. High Bandwidth Isochronous IN Underflow Error Interrupt
      HBISOINERRI    : Boolean;
      --  Read-only. High Bandwidth Isochronous IN Flush Interrupt
      HBISOFLUSHI    : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFI         : Boolean;
      --  Read-only. CRC Error Interrupt
      CRCERRI        : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKET    : Boolean;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : DEVEPTISR_ISO_MODE_DTSEQSelect;
      --  Read-only. High-bandwidth Isochronous OUT Endpoint Transaction Error
      --  Interrupt
      ERRORTRANS     : Boolean;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. Number of Busy Banks
      NBUSYBK        : DEVEPTISR_ISO_MODE_NBUSYBKSelect;
      --  Read-only. Current Bank
      CURRBK         : DEVEPTISR_ISO_MODE_CURRBKSelect;
      --  Read-only. Read/Write Allowed
      RWALL          : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Configuration OK Status
      CFGOK          : Boolean;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. Byte Count
      BYCT           : USBHS_DEVEPTISR_ISO_MODE_BYCT_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTISR_ISO_MODE_Register use record
      TXINI          at 0 range 0 .. 0;
      RXOUTI         at 0 range 1 .. 1;
      UNDERFI        at 0 range 2 .. 2;
      HBISOINERRI    at 0 range 3 .. 3;
      HBISOFLUSHI    at 0 range 4 .. 4;
      OVERFI         at 0 range 5 .. 5;
      CRCERRI        at 0 range 6 .. 6;
      SHORTPACKET    at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      ERRORTRANS     at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      RWALL          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CFGOK          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      BYCT           at 0 range 20 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Device Endpoint Interrupt Status Register
   type USBHS_DEVEPTISR_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTISR_ISO_MODE_Register;

   --  Data Toggle Sequence
   type DEVEPTISR_BLK_MODE_DTSEQSelect is
     (--  Data0 toggle sequence
      DATA0,
      --  Data1 toggle sequence
      DATA1,
      --  Reserved for high-bandwidth isochronous endpoint
      DATA2,
      --  Reserved for high-bandwidth isochronous endpoint
      MDATA)
     with Size => 2;
   for DEVEPTISR_BLK_MODE_DTSEQSelect use
     (DATA0 => 0,
      DATA1 => 1,
      DATA2 => 2,
      MDATA => 3);

   --  Number of Busy Banks
   type DEVEPTISR_BLK_MODE_NBUSYBKSelect is
     (--  0 busy bank (all banks free)
      Val_0_BUSY,
      --  1 busy bank
      Val_1_BUSY,
      --  2 busy banks
      Val_2_BUSY,
      --  3 busy banks
      Val_3_BUSY)
     with Size => 2;
   for DEVEPTISR_BLK_MODE_NBUSYBKSelect use
     (Val_0_BUSY => 0,
      Val_1_BUSY => 1,
      Val_2_BUSY => 2,
      Val_3_BUSY => 3);

   --  Current Bank
   type DEVEPTISR_BLK_MODE_CURRBKSelect is
     (--  Current bank is bank0
      BANK0,
      --  Current bank is bank1
      BANK1,
      --  Current bank is bank2
      BANK2)
     with Size => 2;
   for DEVEPTISR_BLK_MODE_CURRBKSelect use
     (BANK0 => 0,
      BANK1 => 1,
      BANK2 => 2);

   subtype USBHS_DEVEPTISR_BLK_MODE_BYCT_Field is HAL.UInt11;

   --  Device Endpoint Interrupt Status Register
   type USBHS_DEVEPTISR_BLK_MODE_Register is record
      --  Read-only. Transmitted IN Data Interrupt
      TXINI          : Boolean;
      --  Read-only. Received OUT Data Interrupt
      RXOUTI         : Boolean;
      --  Read-only. Received SETUP Interrupt
      RXSTPI         : Boolean;
      --  Read-only. NAKed OUT Interrupt
      NAKOUTI        : Boolean;
      --  Read-only. NAKed IN Interrupt
      NAKINI         : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFI         : Boolean;
      --  Read-only. STALLed Interrupt
      STALLEDI       : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKET    : Boolean;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : DEVEPTISR_BLK_MODE_DTSEQSelect;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Number of Busy Banks
      NBUSYBK        : DEVEPTISR_BLK_MODE_NBUSYBKSelect;
      --  Read-only. Current Bank
      CURRBK         : DEVEPTISR_BLK_MODE_CURRBKSelect;
      --  Read-only. Read/Write Allowed
      RWALL          : Boolean;
      --  Read-only. Control Direction
      CTRLDIR        : Boolean;
      --  Read-only. Configuration OK Status
      CFGOK          : Boolean;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. Byte Count
      BYCT           : USBHS_DEVEPTISR_BLK_MODE_BYCT_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTISR_BLK_MODE_Register use record
      TXINI          at 0 range 0 .. 0;
      RXOUTI         at 0 range 1 .. 1;
      RXSTPI         at 0 range 2 .. 2;
      NAKOUTI        at 0 range 3 .. 3;
      NAKINI         at 0 range 4 .. 4;
      OVERFI         at 0 range 5 .. 5;
      STALLEDI       at 0 range 6 .. 6;
      SHORTPACKET    at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      RWALL          at 0 range 16 .. 16;
      CTRLDIR        at 0 range 17 .. 17;
      CFGOK          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      BYCT           at 0 range 20 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Device Endpoint Interrupt Status Register
   type USBHS_DEVEPTISR_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTISR_BLK_MODE_Register;

   --  Data Toggle Sequence
   type DEVEPTISR_INTRPT_MODE_DTSEQSelect is
     (--  Data0 toggle sequence
      DATA0,
      --  Data1 toggle sequence
      DATA1,
      --  Reserved for high-bandwidth isochronous endpoint
      DATA2,
      --  Reserved for high-bandwidth isochronous endpoint
      MDATA)
     with Size => 2;
   for DEVEPTISR_INTRPT_MODE_DTSEQSelect use
     (DATA0 => 0,
      DATA1 => 1,
      DATA2 => 2,
      MDATA => 3);

   --  Number of Busy Banks
   type DEVEPTISR_INTRPT_MODE_NBUSYBKSelect is
     (--  0 busy bank (all banks free)
      Val_0_BUSY,
      --  1 busy bank
      Val_1_BUSY,
      --  2 busy banks
      Val_2_BUSY,
      --  3 busy banks
      Val_3_BUSY)
     with Size => 2;
   for DEVEPTISR_INTRPT_MODE_NBUSYBKSelect use
     (Val_0_BUSY => 0,
      Val_1_BUSY => 1,
      Val_2_BUSY => 2,
      Val_3_BUSY => 3);

   --  Current Bank
   type DEVEPTISR_INTRPT_MODE_CURRBKSelect is
     (--  Current bank is bank0
      BANK0,
      --  Current bank is bank1
      BANK1,
      --  Current bank is bank2
      BANK2)
     with Size => 2;
   for DEVEPTISR_INTRPT_MODE_CURRBKSelect use
     (BANK0 => 0,
      BANK1 => 1,
      BANK2 => 2);

   subtype USBHS_DEVEPTISR_INTRPT_MODE_BYCT_Field is HAL.UInt11;

   --  Device Endpoint Interrupt Status Register
   type USBHS_DEVEPTISR_INTRPT_MODE_Register is record
      --  Read-only. Transmitted IN Data Interrupt
      TXINI          : Boolean;
      --  Read-only. Received OUT Data Interrupt
      RXOUTI         : Boolean;
      --  Read-only. Received SETUP Interrupt
      RXSTPI         : Boolean;
      --  Read-only. NAKed OUT Interrupt
      NAKOUTI        : Boolean;
      --  Read-only. NAKed IN Interrupt
      NAKINI         : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFI         : Boolean;
      --  Read-only. STALLed Interrupt
      STALLEDI       : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKET    : Boolean;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : DEVEPTISR_INTRPT_MODE_DTSEQSelect;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Number of Busy Banks
      NBUSYBK        : DEVEPTISR_INTRPT_MODE_NBUSYBKSelect;
      --  Read-only. Current Bank
      CURRBK         : DEVEPTISR_INTRPT_MODE_CURRBKSelect;
      --  Read-only. Read/Write Allowed
      RWALL          : Boolean;
      --  Read-only. Control Direction
      CTRLDIR        : Boolean;
      --  Read-only. Configuration OK Status
      CFGOK          : Boolean;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. Byte Count
      BYCT           : USBHS_DEVEPTISR_INTRPT_MODE_BYCT_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTISR_INTRPT_MODE_Register use record
      TXINI          at 0 range 0 .. 0;
      RXOUTI         at 0 range 1 .. 1;
      RXSTPI         at 0 range 2 .. 2;
      NAKOUTI        at 0 range 3 .. 3;
      NAKINI         at 0 range 4 .. 4;
      OVERFI         at 0 range 5 .. 5;
      STALLEDI       at 0 range 6 .. 6;
      SHORTPACKET    at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      RWALL          at 0 range 16 .. 16;
      CTRLDIR        at 0 range 17 .. 17;
      CFGOK          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      BYCT           at 0 range 20 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Device Endpoint Interrupt Status Register
   type USBHS_DEVEPTISR_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTISR_INTRPT_MODE_Register;

   --  Device Endpoint Interrupt Clear Register
   type USBHS_DEVEPTICR_CTRL_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Clear
      TXINIC        : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Clear
      RXOUTIC       : Boolean := False;
      --  Write-only. Received SETUP Interrupt Clear
      RXSTPIC       : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Clear
      NAKOUTIC      : Boolean := False;
      --  Write-only. NAKed IN Interrupt Clear
      NAKINIC       : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFIC       : Boolean := False;
      --  Write-only. STALLed Interrupt Clear
      STALLEDIC     : Boolean := False;
      --  Write-only. Short Packet Interrupt Clear
      SHORTPACKETC  : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTICR_CTRL_MODE_Register use record
      TXINIC        at 0 range 0 .. 0;
      RXOUTIC       at 0 range 1 .. 1;
      RXSTPIC       at 0 range 2 .. 2;
      NAKOUTIC      at 0 range 3 .. 3;
      NAKINIC       at 0 range 4 .. 4;
      OVERFIC       at 0 range 5 .. 5;
      STALLEDIC     at 0 range 6 .. 6;
      SHORTPACKETC  at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Device Endpoint Interrupt Clear Register
   type USBHS_DEVEPTICR_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTICR_CTRL_MODE_Register;

   --  Device Endpoint Interrupt Clear Register
   type USBHS_DEVEPTICR_ISO_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Clear
      TXINIC        : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Clear
      RXOUTIC       : Boolean := False;
      --  Write-only. Underflow Interrupt Clear
      UNDERFIC      : Boolean := False;
      --  Write-only. High Bandwidth Isochronous IN Underflow Error Interrupt
      --  Clear
      HBISOINERRIC  : Boolean := False;
      --  Write-only. High Bandwidth Isochronous IN Flush Interrupt Clear
      HBISOFLUSHIC  : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFIC       : Boolean := False;
      --  Write-only. CRC Error Interrupt Clear
      CRCERRIC      : Boolean := False;
      --  Write-only. Short Packet Interrupt Clear
      SHORTPACKETC  : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTICR_ISO_MODE_Register use record
      TXINIC        at 0 range 0 .. 0;
      RXOUTIC       at 0 range 1 .. 1;
      UNDERFIC      at 0 range 2 .. 2;
      HBISOINERRIC  at 0 range 3 .. 3;
      HBISOFLUSHIC  at 0 range 4 .. 4;
      OVERFIC       at 0 range 5 .. 5;
      CRCERRIC      at 0 range 6 .. 6;
      SHORTPACKETC  at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Device Endpoint Interrupt Clear Register
   type USBHS_DEVEPTICR_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTICR_ISO_MODE_Register;

   --  Device Endpoint Interrupt Clear Register
   type USBHS_DEVEPTICR_BLK_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Clear
      TXINIC        : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Clear
      RXOUTIC       : Boolean := False;
      --  Write-only. Received SETUP Interrupt Clear
      RXSTPIC       : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Clear
      NAKOUTIC      : Boolean := False;
      --  Write-only. NAKed IN Interrupt Clear
      NAKINIC       : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFIC       : Boolean := False;
      --  Write-only. STALLed Interrupt Clear
      STALLEDIC     : Boolean := False;
      --  Write-only. Short Packet Interrupt Clear
      SHORTPACKETC  : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTICR_BLK_MODE_Register use record
      TXINIC        at 0 range 0 .. 0;
      RXOUTIC       at 0 range 1 .. 1;
      RXSTPIC       at 0 range 2 .. 2;
      NAKOUTIC      at 0 range 3 .. 3;
      NAKINIC       at 0 range 4 .. 4;
      OVERFIC       at 0 range 5 .. 5;
      STALLEDIC     at 0 range 6 .. 6;
      SHORTPACKETC  at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Device Endpoint Interrupt Clear Register
   type USBHS_DEVEPTICR_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTICR_BLK_MODE_Register;

   --  Device Endpoint Interrupt Clear Register
   type USBHS_DEVEPTICR_INTRPT_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Clear
      TXINIC        : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Clear
      RXOUTIC       : Boolean := False;
      --  Write-only. Received SETUP Interrupt Clear
      RXSTPIC       : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Clear
      NAKOUTIC      : Boolean := False;
      --  Write-only. NAKed IN Interrupt Clear
      NAKINIC       : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFIC       : Boolean := False;
      --  Write-only. STALLed Interrupt Clear
      STALLEDIC     : Boolean := False;
      --  Write-only. Short Packet Interrupt Clear
      SHORTPACKETC  : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTICR_INTRPT_MODE_Register use record
      TXINIC        at 0 range 0 .. 0;
      RXOUTIC       at 0 range 1 .. 1;
      RXSTPIC       at 0 range 2 .. 2;
      NAKOUTIC      at 0 range 3 .. 3;
      NAKINIC       at 0 range 4 .. 4;
      OVERFIC       at 0 range 5 .. 5;
      STALLEDIC     at 0 range 6 .. 6;
      SHORTPACKETC  at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Device Endpoint Interrupt Clear Register
   type USBHS_DEVEPTICR_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTICR_INTRPT_MODE_Register;

   --  Device Endpoint Interrupt Set Register
   type USBHS_DEVEPTIFR_CTRL_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Set
      TXINIS         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Set
      RXOUTIS        : Boolean := False;
      --  Write-only. Received SETUP Interrupt Set
      RXSTPIS        : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Set
      NAKOUTIS       : Boolean := False;
      --  Write-only. NAKed IN Interrupt Set
      NAKINIS        : Boolean := False;
      --  Write-only. Overflow Interrupt Set
      OVERFIS        : Boolean := False;
      --  Write-only. STALLed Interrupt Set
      STALLEDIS      : Boolean := False;
      --  Write-only. Short Packet Interrupt Set
      SHORTPACKETS   : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIFR_CTRL_MODE_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      OVERFIS        at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      SHORTPACKETS   at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Device Endpoint Interrupt Set Register
   type USBHS_DEVEPTIFR_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIFR_CTRL_MODE_Register;

   --  Device Endpoint Interrupt Set Register
   type USBHS_DEVEPTIFR_ISO_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Set
      TXINIS         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Set
      RXOUTIS        : Boolean := False;
      --  Write-only. Underflow Interrupt Set
      UNDERFIS       : Boolean := False;
      --  Write-only. High Bandwidth Isochronous IN Underflow Error Interrupt
      --  Set
      HBISOINERRIS   : Boolean := False;
      --  Write-only. High Bandwidth Isochronous IN Flush Interrupt Set
      HBISOFLUSHIS   : Boolean := False;
      --  Write-only. Overflow Interrupt Set
      OVERFIS        : Boolean := False;
      --  Write-only. CRC Error Interrupt Set
      CRCERRIS       : Boolean := False;
      --  Write-only. Short Packet Interrupt Set
      SHORTPACKETS   : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIFR_ISO_MODE_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      UNDERFIS       at 0 range 2 .. 2;
      HBISOINERRIS   at 0 range 3 .. 3;
      HBISOFLUSHIS   at 0 range 4 .. 4;
      OVERFIS        at 0 range 5 .. 5;
      CRCERRIS       at 0 range 6 .. 6;
      SHORTPACKETS   at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Device Endpoint Interrupt Set Register
   type USBHS_DEVEPTIFR_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIFR_ISO_MODE_Register;

   --  Device Endpoint Interrupt Set Register
   type USBHS_DEVEPTIFR_BLK_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Set
      TXINIS         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Set
      RXOUTIS        : Boolean := False;
      --  Write-only. Received SETUP Interrupt Set
      RXSTPIS        : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Set
      NAKOUTIS       : Boolean := False;
      --  Write-only. NAKed IN Interrupt Set
      NAKINIS        : Boolean := False;
      --  Write-only. Overflow Interrupt Set
      OVERFIS        : Boolean := False;
      --  Write-only. STALLed Interrupt Set
      STALLEDIS      : Boolean := False;
      --  Write-only. Short Packet Interrupt Set
      SHORTPACKETS   : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIFR_BLK_MODE_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      OVERFIS        at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      SHORTPACKETS   at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Device Endpoint Interrupt Set Register
   type USBHS_DEVEPTIFR_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIFR_BLK_MODE_Register;

   --  Device Endpoint Interrupt Set Register
   type USBHS_DEVEPTIFR_INTRPT_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Set
      TXINIS         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Set
      RXOUTIS        : Boolean := False;
      --  Write-only. Received SETUP Interrupt Set
      RXSTPIS        : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Set
      NAKOUTIS       : Boolean := False;
      --  Write-only. NAKed IN Interrupt Set
      NAKINIS        : Boolean := False;
      --  Write-only. Overflow Interrupt Set
      OVERFIS        : Boolean := False;
      --  Write-only. STALLed Interrupt Set
      STALLEDIS      : Boolean := False;
      --  Write-only. Short Packet Interrupt Set
      SHORTPACKETS   : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIFR_INTRPT_MODE_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      OVERFIS        at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      SHORTPACKETS   at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Device Endpoint Interrupt Set Register
   type USBHS_DEVEPTIFR_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIFR_INTRPT_MODE_Register;

   --  Device Endpoint Interrupt Mask Register
   type USBHS_DEVEPTIMR_CTRL_MODE_Register is record
      --  Read-only. Transmitted IN Data Interrupt
      TXINE          : Boolean;
      --  Read-only. Received OUT Data Interrupt
      RXOUTE         : Boolean;
      --  Read-only. Received SETUP Interrupt
      RXSTPE         : Boolean;
      --  Read-only. NAKed OUT Interrupt
      NAKOUTE        : Boolean;
      --  Read-only. NAKed IN Interrupt
      NAKINE         : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFE         : Boolean;
      --  Read-only. STALLed Interrupt
      STALLEDE       : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKETE   : Boolean;
      --  unspecified
      Reserved_8_11  : HAL.UInt4;
      --  Read-only. Number of Busy Banks Interrupt
      NBUSYBKE       : Boolean;
      --  Read-only. Kill IN Bank
      KILLBK         : Boolean;
      --  Read-only. FIFO Control
      FIFOCON        : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Endpoint Interrupts Disable HDMA Request
      EPDISHDMA      : Boolean;
      --  Read-only. NYET Token Disable
      NYETDIS        : Boolean;
      --  Read-only. Reset Data Toggle
      RSTDT          : Boolean;
      --  Read-only. STALL Request
      STALLRQ        : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIMR_CTRL_MODE_Register use record
      TXINE          at 0 range 0 .. 0;
      RXOUTE         at 0 range 1 .. 1;
      RXSTPE         at 0 range 2 .. 2;
      NAKOUTE        at 0 range 3 .. 3;
      NAKINE         at 0 range 4 .. 4;
      OVERFE         at 0 range 5 .. 5;
      STALLEDE       at 0 range 6 .. 6;
      SHORTPACKETE   at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      KILLBK         at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMA      at 0 range 16 .. 16;
      NYETDIS        at 0 range 17 .. 17;
      RSTDT          at 0 range 18 .. 18;
      STALLRQ        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Endpoint Interrupt Mask Register
   type USBHS_DEVEPTIMR_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIMR_CTRL_MODE_Register;

   --  Device Endpoint Interrupt Mask Register
   type USBHS_DEVEPTIMR_ISO_MODE_Register is record
      --  Read-only. Transmitted IN Data Interrupt
      TXINE          : Boolean;
      --  Read-only. Received OUT Data Interrupt
      RXOUTE         : Boolean;
      --  Read-only. Underflow Interrupt
      UNDERFE        : Boolean;
      --  Read-only. High Bandwidth Isochronous IN Underflow Error Interrupt
      HBISOINERRE    : Boolean;
      --  Read-only. High Bandwidth Isochronous IN Flush Interrupt
      HBISOFLUSHE    : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFE         : Boolean;
      --  Read-only. CRC Error Interrupt
      CRCERRE        : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKETE   : Boolean;
      --  Read-only. MData Interrupt
      MDATAE         : Boolean;
      --  Read-only. DataX Interrupt
      DATAXE         : Boolean;
      --  Read-only. Transaction Error Interrupt
      ERRORTRANSE    : Boolean;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. Number of Busy Banks Interrupt
      NBUSYBKE       : Boolean;
      --  Read-only. Kill IN Bank
      KILLBK         : Boolean;
      --  Read-only. FIFO Control
      FIFOCON        : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Endpoint Interrupts Disable HDMA Request
      EPDISHDMA      : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Reset Data Toggle
      RSTDT          : Boolean;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIMR_ISO_MODE_Register use record
      TXINE          at 0 range 0 .. 0;
      RXOUTE         at 0 range 1 .. 1;
      UNDERFE        at 0 range 2 .. 2;
      HBISOINERRE    at 0 range 3 .. 3;
      HBISOFLUSHE    at 0 range 4 .. 4;
      OVERFE         at 0 range 5 .. 5;
      CRCERRE        at 0 range 6 .. 6;
      SHORTPACKETE   at 0 range 7 .. 7;
      MDATAE         at 0 range 8 .. 8;
      DATAXE         at 0 range 9 .. 9;
      ERRORTRANSE    at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      KILLBK         at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMA      at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      RSTDT          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Device Endpoint Interrupt Mask Register
   type USBHS_DEVEPTIMR_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIMR_ISO_MODE_Register;

   --  Device Endpoint Interrupt Mask Register
   type USBHS_DEVEPTIMR_BLK_MODE_Register is record
      --  Read-only. Transmitted IN Data Interrupt
      TXINE          : Boolean;
      --  Read-only. Received OUT Data Interrupt
      RXOUTE         : Boolean;
      --  Read-only. Received SETUP Interrupt
      RXSTPE         : Boolean;
      --  Read-only. NAKed OUT Interrupt
      NAKOUTE        : Boolean;
      --  Read-only. NAKed IN Interrupt
      NAKINE         : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFE         : Boolean;
      --  Read-only. STALLed Interrupt
      STALLEDE       : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKETE   : Boolean;
      --  unspecified
      Reserved_8_11  : HAL.UInt4;
      --  Read-only. Number of Busy Banks Interrupt
      NBUSYBKE       : Boolean;
      --  Read-only. Kill IN Bank
      KILLBK         : Boolean;
      --  Read-only. FIFO Control
      FIFOCON        : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Endpoint Interrupts Disable HDMA Request
      EPDISHDMA      : Boolean;
      --  Read-only. NYET Token Disable
      NYETDIS        : Boolean;
      --  Read-only. Reset Data Toggle
      RSTDT          : Boolean;
      --  Read-only. STALL Request
      STALLRQ        : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIMR_BLK_MODE_Register use record
      TXINE          at 0 range 0 .. 0;
      RXOUTE         at 0 range 1 .. 1;
      RXSTPE         at 0 range 2 .. 2;
      NAKOUTE        at 0 range 3 .. 3;
      NAKINE         at 0 range 4 .. 4;
      OVERFE         at 0 range 5 .. 5;
      STALLEDE       at 0 range 6 .. 6;
      SHORTPACKETE   at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      KILLBK         at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMA      at 0 range 16 .. 16;
      NYETDIS        at 0 range 17 .. 17;
      RSTDT          at 0 range 18 .. 18;
      STALLRQ        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Endpoint Interrupt Mask Register
   type USBHS_DEVEPTIMR_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIMR_BLK_MODE_Register;

   --  Device Endpoint Interrupt Mask Register
   type USBHS_DEVEPTIMR_INTRPT_MODE_Register is record
      --  Read-only. Transmitted IN Data Interrupt
      TXINE          : Boolean;
      --  Read-only. Received OUT Data Interrupt
      RXOUTE         : Boolean;
      --  Read-only. Received SETUP Interrupt
      RXSTPE         : Boolean;
      --  Read-only. NAKed OUT Interrupt
      NAKOUTE        : Boolean;
      --  Read-only. NAKed IN Interrupt
      NAKINE         : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFE         : Boolean;
      --  Read-only. STALLed Interrupt
      STALLEDE       : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKETE   : Boolean;
      --  unspecified
      Reserved_8_11  : HAL.UInt4;
      --  Read-only. Number of Busy Banks Interrupt
      NBUSYBKE       : Boolean;
      --  Read-only. Kill IN Bank
      KILLBK         : Boolean;
      --  Read-only. FIFO Control
      FIFOCON        : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Endpoint Interrupts Disable HDMA Request
      EPDISHDMA      : Boolean;
      --  Read-only. NYET Token Disable
      NYETDIS        : Boolean;
      --  Read-only. Reset Data Toggle
      RSTDT          : Boolean;
      --  Read-only. STALL Request
      STALLRQ        : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIMR_INTRPT_MODE_Register use record
      TXINE          at 0 range 0 .. 0;
      RXOUTE         at 0 range 1 .. 1;
      RXSTPE         at 0 range 2 .. 2;
      NAKOUTE        at 0 range 3 .. 3;
      NAKINE         at 0 range 4 .. 4;
      OVERFE         at 0 range 5 .. 5;
      STALLEDE       at 0 range 6 .. 6;
      SHORTPACKETE   at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      KILLBK         at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMA      at 0 range 16 .. 16;
      NYETDIS        at 0 range 17 .. 17;
      RSTDT          at 0 range 18 .. 18;
      STALLRQ        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Endpoint Interrupt Mask Register
   type USBHS_DEVEPTIMR_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIMR_INTRPT_MODE_Register;

   --  Device Endpoint Interrupt Enable Register
   type USBHS_DEVEPTIER_CTRL_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Enable
      TXINES         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXOUTES        : Boolean := False;
      --  Write-only. Received SETUP Interrupt Enable
      RXSTPES        : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Enable
      NAKOUTES       : Boolean := False;
      --  Write-only. NAKed IN Interrupt Enable
      NAKINES        : Boolean := False;
      --  Write-only. Overflow Interrupt Enable
      OVERFES        : Boolean := False;
      --  Write-only. STALLed Interrupt Enable
      STALLEDES      : Boolean := False;
      --  Write-only. Short Packet Interrupt Enable
      SHORTPACKETES  : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Enable
      NBUSYBKES      : Boolean := False;
      --  Write-only. Kill IN Bank
      KILLBKS        : Boolean := False;
      --  Write-only. FIFO Control
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Endpoint Interrupts Disable HDMA Request Enable
      EPDISHDMAS     : Boolean := False;
      --  Write-only. NYET Token Disable Enable
      NYETDISS       : Boolean := False;
      --  Write-only. Reset Data Toggle Enable
      RSTDTS         : Boolean := False;
      --  Write-only. STALL Request Enable
      STALLRQS       : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIER_CTRL_MODE_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      OVERFES        at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      SHORTPACKETES  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMAS     at 0 range 16 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Endpoint Interrupt Enable Register
   type USBHS_DEVEPTIER_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIER_CTRL_MODE_Register;

   --  Device Endpoint Interrupt Enable Register
   type USBHS_DEVEPTIER_ISO_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Enable
      TXINES         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXOUTES        : Boolean := False;
      --  Write-only. Underflow Interrupt Enable
      UNDERFES       : Boolean := False;
      --  Write-only. High Bandwidth Isochronous IN Underflow Error Interrupt
      --  Enable
      HBISOINERRES   : Boolean := False;
      --  Write-only. High Bandwidth Isochronous IN Flush Interrupt Enable
      HBISOFLUSHES   : Boolean := False;
      --  Write-only. Overflow Interrupt Enable
      OVERFES        : Boolean := False;
      --  Write-only. CRC Error Interrupt Enable
      CRCERRES       : Boolean := False;
      --  Write-only. Short Packet Interrupt Enable
      SHORTPACKETES  : Boolean := False;
      --  Write-only. MData Interrupt Enable
      MDATAES        : Boolean := False;
      --  Write-only. DataX Interrupt Enable
      DATAXES        : Boolean := False;
      --  Write-only. Transaction Error Interrupt Enable
      ERRORTRANSES   : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Enable
      NBUSYBKES      : Boolean := False;
      --  Write-only. Kill IN Bank
      KILLBKS        : Boolean := False;
      --  Write-only. FIFO Control
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Endpoint Interrupts Disable HDMA Request Enable
      EPDISHDMAS     : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Write-only. Reset Data Toggle Enable
      RSTDTS         : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIER_ISO_MODE_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      UNDERFES       at 0 range 2 .. 2;
      HBISOINERRES   at 0 range 3 .. 3;
      HBISOFLUSHES   at 0 range 4 .. 4;
      OVERFES        at 0 range 5 .. 5;
      CRCERRES       at 0 range 6 .. 6;
      SHORTPACKETES  at 0 range 7 .. 7;
      MDATAES        at 0 range 8 .. 8;
      DATAXES        at 0 range 9 .. 9;
      ERRORTRANSES   at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMAS     at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Device Endpoint Interrupt Enable Register
   type USBHS_DEVEPTIER_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIER_ISO_MODE_Register;

   --  Device Endpoint Interrupt Enable Register
   type USBHS_DEVEPTIER_BLK_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Enable
      TXINES         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXOUTES        : Boolean := False;
      --  Write-only. Received SETUP Interrupt Enable
      RXSTPES        : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Enable
      NAKOUTES       : Boolean := False;
      --  Write-only. NAKed IN Interrupt Enable
      NAKINES        : Boolean := False;
      --  Write-only. Overflow Interrupt Enable
      OVERFES        : Boolean := False;
      --  Write-only. STALLed Interrupt Enable
      STALLEDES      : Boolean := False;
      --  Write-only. Short Packet Interrupt Enable
      SHORTPACKETES  : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Enable
      NBUSYBKES      : Boolean := False;
      --  Write-only. Kill IN Bank
      KILLBKS        : Boolean := False;
      --  Write-only. FIFO Control
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Endpoint Interrupts Disable HDMA Request Enable
      EPDISHDMAS     : Boolean := False;
      --  Write-only. NYET Token Disable Enable
      NYETDISS       : Boolean := False;
      --  Write-only. Reset Data Toggle Enable
      RSTDTS         : Boolean := False;
      --  Write-only. STALL Request Enable
      STALLRQS       : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIER_BLK_MODE_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      OVERFES        at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      SHORTPACKETES  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMAS     at 0 range 16 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Endpoint Interrupt Enable Register
   type USBHS_DEVEPTIER_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIER_BLK_MODE_Register;

   --  Device Endpoint Interrupt Enable Register
   type USBHS_DEVEPTIER_INTRPT_MODE_Register is record
      --  Write-only. Transmitted IN Data Interrupt Enable
      TXINES         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Enable
      RXOUTES        : Boolean := False;
      --  Write-only. Received SETUP Interrupt Enable
      RXSTPES        : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Enable
      NAKOUTES       : Boolean := False;
      --  Write-only. NAKed IN Interrupt Enable
      NAKINES        : Boolean := False;
      --  Write-only. Overflow Interrupt Enable
      OVERFES        : Boolean := False;
      --  Write-only. STALLed Interrupt Enable
      STALLEDES      : Boolean := False;
      --  Write-only. Short Packet Interrupt Enable
      SHORTPACKETES  : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Enable
      NBUSYBKES      : Boolean := False;
      --  Write-only. Kill IN Bank
      KILLBKS        : Boolean := False;
      --  Write-only. FIFO Control
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Endpoint Interrupts Disable HDMA Request Enable
      EPDISHDMAS     : Boolean := False;
      --  Write-only. NYET Token Disable Enable
      NYETDISS       : Boolean := False;
      --  Write-only. Reset Data Toggle Enable
      RSTDTS         : Boolean := False;
      --  Write-only. STALL Request Enable
      STALLRQS       : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIER_INTRPT_MODE_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      OVERFES        at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      SHORTPACKETES  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMAS     at 0 range 16 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Endpoint Interrupt Enable Register
   type USBHS_DEVEPTIER_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIER_INTRPT_MODE_Register;

   --  Device Endpoint Interrupt Disable Register
   type USBHS_DEVEPTIDR_CTRL_MODE_Register is record
      --  Write-only. Transmitted IN Interrupt Clear
      TXINEC         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. Received SETUP Interrupt Clear
      RXSTPEC        : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Clear
      NAKOUTEC       : Boolean := False;
      --  Write-only. NAKed IN Interrupt Clear
      NAKINEC        : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFEC        : Boolean := False;
      --  Write-only. STALLed Interrupt Clear
      STALLEDEC      : Boolean := False;
      --  Write-only. Shortpacket Interrupt Clear
      SHORTPACKETEC  : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFO Control Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Endpoint Interrupts Disable HDMA Request Clear
      EPDISHDMAC     : Boolean := False;
      --  Write-only. NYET Token Disable Clear
      NYETDISC       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write-only. STALL Request Clear
      STALLRQC       : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIDR_CTRL_MODE_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      OVERFEC        at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      SHORTPACKETEC  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMAC     at 0 range 16 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Endpoint Interrupt Disable Register
   type USBHS_DEVEPTIDR_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIDR_CTRL_MODE_Register;

   --  Device Endpoint Interrupt Disable Register
   type USBHS_DEVEPTIDR_ISO_MODE_Register is record
      --  Write-only. Transmitted IN Interrupt Clear
      TXINEC         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. Underflow Interrupt Clear
      UNDERFEC       : Boolean := False;
      --  Write-only. High Bandwidth Isochronous IN Underflow Error Interrupt
      --  Clear
      HBISOINERREC   : Boolean := False;
      --  Write-only. High Bandwidth Isochronous IN Flush Interrupt Clear
      HBISOFLUSHEC   : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFEC        : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Write-only. Shortpacket Interrupt Clear
      SHORTPACKETEC  : Boolean := False;
      --  Write-only. MData Interrupt Clear
      MDATAEC        : Boolean := False;
      --  Write-only. DataX Interrupt Clear
      DATAXEC        : Boolean := False;
      --  Write-only. Transaction Error Interrupt Clear
      ERRORTRANSEC   : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFO Control Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Endpoint Interrupts Disable HDMA Request Clear
      EPDISHDMAC     : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIDR_ISO_MODE_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      UNDERFEC       at 0 range 2 .. 2;
      HBISOINERREC   at 0 range 3 .. 3;
      HBISOFLUSHEC   at 0 range 4 .. 4;
      OVERFEC        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      SHORTPACKETEC  at 0 range 7 .. 7;
      MDATAEC        at 0 range 8 .. 8;
      DATAXEC        at 0 range 9 .. 9;
      ERRORTRANSEC   at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMAC     at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Device Endpoint Interrupt Disable Register
   type USBHS_DEVEPTIDR_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIDR_ISO_MODE_Register;

   --  Device Endpoint Interrupt Disable Register
   type USBHS_DEVEPTIDR_BLK_MODE_Register is record
      --  Write-only. Transmitted IN Interrupt Clear
      TXINEC         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. Received SETUP Interrupt Clear
      RXSTPEC        : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Clear
      NAKOUTEC       : Boolean := False;
      --  Write-only. NAKed IN Interrupt Clear
      NAKINEC        : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFEC        : Boolean := False;
      --  Write-only. STALLed Interrupt Clear
      STALLEDEC      : Boolean := False;
      --  Write-only. Shortpacket Interrupt Clear
      SHORTPACKETEC  : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFO Control Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Endpoint Interrupts Disable HDMA Request Clear
      EPDISHDMAC     : Boolean := False;
      --  Write-only. NYET Token Disable Clear
      NYETDISC       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write-only. STALL Request Clear
      STALLRQC       : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIDR_BLK_MODE_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      OVERFEC        at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      SHORTPACKETEC  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMAC     at 0 range 16 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Endpoint Interrupt Disable Register
   type USBHS_DEVEPTIDR_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIDR_BLK_MODE_Register;

   --  Device Endpoint Interrupt Disable Register
   type USBHS_DEVEPTIDR_INTRPT_MODE_Register is record
      --  Write-only. Transmitted IN Interrupt Clear
      TXINEC         : Boolean := False;
      --  Write-only. Received OUT Data Interrupt Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. Received SETUP Interrupt Clear
      RXSTPEC        : Boolean := False;
      --  Write-only. NAKed OUT Interrupt Clear
      NAKOUTEC       : Boolean := False;
      --  Write-only. NAKed IN Interrupt Clear
      NAKINEC        : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFEC        : Boolean := False;
      --  Write-only. STALLed Interrupt Clear
      STALLEDEC      : Boolean := False;
      --  Write-only. Shortpacket Interrupt Clear
      SHORTPACKETEC  : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Interrupt Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFO Control Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Endpoint Interrupts Disable HDMA Request Clear
      EPDISHDMAC     : Boolean := False;
      --  Write-only. NYET Token Disable Clear
      NYETDISC       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write-only. STALL Request Clear
      STALLRQC       : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVEPTIDR_INTRPT_MODE_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      OVERFEC        at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      SHORTPACKETEC  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EPDISHDMAC     at 0 range 16 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Endpoint Interrupt Disable Register
   type USBHS_DEVEPTIDR_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_DEVEPTIDR_INTRPT_MODE_Register;

   --------------------------------------------
   -- USBHS_USBHS_DEVDMA cluster's Registers --
   --------------------------------------------

   subtype USBHS_DEVDMACONTROL_USBHS_USBHS_DEVDMA_BUFF_LENGTH_Field is
     HAL.UInt16;

   --  Device DMA Channel Control Register
   type USBHS_DEVDMACONTROL_USBHS_USBHS_DEVDMA_Register is record
      --  Channel Enable Command
      CHANN_ENB     : Boolean := False;
      --  Load Next Channel Transfer Descriptor Enable Command
      LDNXT_DSC     : Boolean := False;
      --  End of Transfer Enable Control (OUT transfers only)
      END_TR_EN     : Boolean := False;
      --  End of Buffer Enable Control
      END_B_EN      : Boolean := False;
      --  End of Transfer Interrupt Enable
      END_TR_IT     : Boolean := False;
      --  End of Buffer Interrupt Enable
      END_BUFFIT    : Boolean := False;
      --  Descriptor Loaded Interrupt Enable
      DESC_LD_IT    : Boolean := False;
      --  Burst Lock Enable
      BURST_LCK     : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
      --  Buffer Byte Length (Write-only)
      BUFF_LENGTH   : USBHS_DEVDMACONTROL_USBHS_USBHS_DEVDMA_BUFF_LENGTH_Field :=
                       16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVDMACONTROL_USBHS_USBHS_DEVDMA_Register use record
      CHANN_ENB     at 0 range 0 .. 0;
      LDNXT_DSC     at 0 range 1 .. 1;
      END_TR_EN     at 0 range 2 .. 2;
      END_B_EN      at 0 range 3 .. 3;
      END_TR_IT     at 0 range 4 .. 4;
      END_BUFFIT    at 0 range 5 .. 5;
      DESC_LD_IT    at 0 range 6 .. 6;
      BURST_LCK     at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      BUFF_LENGTH   at 0 range 16 .. 31;
   end record;

   subtype USBHS_DEVDMASTATUS_USBHS_USBHS_DEVDMA_BUFF_COUNT_Field is
     HAL.UInt16;

   --  Device DMA Channel Status Register
   type USBHS_DEVDMASTATUS_USBHS_USBHS_DEVDMA_Register is record
      --  Channel Enable Status
      CHANN_ENB     : Boolean := False;
      --  Channel Active Status
      CHANN_ACT     : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  End of Channel Transfer Status
      END_TR_ST     : Boolean := False;
      --  End of Channel Buffer Status
      END_BF_ST     : Boolean := False;
      --  Descriptor Loaded Status
      DESC_LDST     : Boolean := False;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
      --  Buffer Byte Count
      BUFF_COUNT    : USBHS_DEVDMASTATUS_USBHS_USBHS_DEVDMA_BUFF_COUNT_Field :=
                       16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVDMASTATUS_USBHS_USBHS_DEVDMA_Register use record
      CHANN_ENB     at 0 range 0 .. 0;
      CHANN_ACT     at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      END_TR_ST     at 0 range 4 .. 4;
      END_BF_ST     at 0 range 5 .. 5;
      DESC_LDST     at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
      BUFF_COUNT    at 0 range 16 .. 31;
   end record;

   --  Device DMA Channel Next Descriptor Address Register
   type USBHS_USBHS_DEVDMA_Cluster is record
      --  Device DMA Channel Next Descriptor Address Register
      DEVDMANXTDSC  : aliased HAL.UInt32;
      --  Device DMA Channel Address Register
      DEVDMAADDRESS : aliased HAL.UInt32;
      --  Device DMA Channel Control Register
      DEVDMACONTROL : aliased USBHS_DEVDMACONTROL_USBHS_USBHS_DEVDMA_Register;
      --  Device DMA Channel Status Register
      DEVDMASTATUS  : aliased USBHS_DEVDMASTATUS_USBHS_USBHS_DEVDMA_Register;
   end record
     with Size => 128;

   for USBHS_USBHS_DEVDMA_Cluster use record
      DEVDMANXTDSC  at 16#0# range 0 .. 31;
      DEVDMAADDRESS at 16#4# range 0 .. 31;
      DEVDMACONTROL at 16#8# range 0 .. 31;
      DEVDMASTATUS  at 16#C# range 0 .. 31;
   end record;

   --  Device DMA Channel Next Descriptor Address Register
   type USBHS_USBHS_DEVDMA_Clusters is array (0 .. 6)
     of USBHS_USBHS_DEVDMA_Cluster;

   --  Mode Configuration
   type HSTCTRL_SPDCONFSelect is
     (--  The host starts in Full-speed mode and performs a high-speed reset to
--  switch to High-speed mode if the downstream peripheral is high-speed
--  capable.
      NORMAL,
      --  For a better consumption, if high speed is not needed.
      LOW_POWER,
      --  Forced high speed.
      HIGH_SPEED,
      --  The host remains in Full-speed mode whatever the peripheral speed
--  capability.
      FORCED_FS)
     with Size => 2;
   for HSTCTRL_SPDCONFSelect use
     (NORMAL => 0,
      LOW_POWER => 1,
      HIGH_SPEED => 2,
      FORCED_FS => 3);

   --  Host General Control Register
   type USBHS_HSTCTRL_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Start of Frame Generation Enable
      SOFE           : Boolean := False;
      --  Send USB Reset
      RESET          : Boolean := False;
      --  Send USB Resume
      RESUME         : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Mode Configuration
      SPDCONF        : HSTCTRL_SPDCONFSelect := SAM_SVD.USBHS.NORMAL;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTCTRL_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SOFE           at 0 range 8 .. 8;
      RESET          at 0 range 9 .. 9;
      RESUME         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SPDCONF        at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Host Global Interrupt Status Register
   type USBHS_HSTISR_Register is record
      --  Read-only. Device Connection Interrupt
      DCONNI         : Boolean;
      --  Read-only. Device Disconnection Interrupt
      DDISCI         : Boolean;
      --  Read-only. USB Reset Sent Interrupt
      RSTI           : Boolean;
      --  Read-only. Downstream Resume Sent Interrupt
      RSMEDI         : Boolean;
      --  Read-only. Upstream Resume Received Interrupt
      RXRSMI         : Boolean;
      --  Read-only. Host Start of Frame Interrupt
      HSOFI          : Boolean;
      --  Read-only. Host Wake-Up Interrupt
      HWUPI          : Boolean;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Pipe 0 Interrupt
      PEP_0          : Boolean;
      --  Read-only. Pipe 1 Interrupt
      PEP_1          : Boolean;
      --  Read-only. Pipe 2 Interrupt
      PEP_2          : Boolean;
      --  Read-only. Pipe 3 Interrupt
      PEP_3          : Boolean;
      --  Read-only. Pipe 4 Interrupt
      PEP_4          : Boolean;
      --  Read-only. Pipe 5 Interrupt
      PEP_5          : Boolean;
      --  Read-only. Pipe 6 Interrupt
      PEP_6          : Boolean;
      --  Read-only. Pipe 7 Interrupt
      PEP_7          : Boolean;
      --  Read-only. Pipe 8 Interrupt
      PEP_8          : Boolean;
      --  Read-only. Pipe 9 Interrupt
      PEP_9          : Boolean;
      --  unspecified
      Reserved_18_24 : HAL.UInt7;
      --  Read-only. DMA Channel 0 Interrupt
      DMA_1          : Boolean;
      --  Read-only. DMA Channel 1 Interrupt
      DMA_2          : Boolean;
      --  Read-only. DMA Channel 2 Interrupt
      DMA_3          : Boolean;
      --  Read-only. DMA Channel 3 Interrupt
      DMA_4          : Boolean;
      --  Read-only. DMA Channel 4 Interrupt
      DMA_5          : Boolean;
      --  Read-only. DMA Channel 5 Interrupt
      DMA_6          : Boolean;
      --  Read-only. DMA Channel 6 Interrupt
      DMA_7          : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTISR_Register use record
      DCONNI         at 0 range 0 .. 0;
      DDISCI         at 0 range 1 .. 1;
      RSTI           at 0 range 2 .. 2;
      RSMEDI         at 0 range 3 .. 3;
      RXRSMI         at 0 range 4 .. 4;
      HSOFI          at 0 range 5 .. 5;
      HWUPI          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PEP_0          at 0 range 8 .. 8;
      PEP_1          at 0 range 9 .. 9;
      PEP_2          at 0 range 10 .. 10;
      PEP_3          at 0 range 11 .. 11;
      PEP_4          at 0 range 12 .. 12;
      PEP_5          at 0 range 13 .. 13;
      PEP_6          at 0 range 14 .. 14;
      PEP_7          at 0 range 15 .. 15;
      PEP_8          at 0 range 16 .. 16;
      PEP_9          at 0 range 17 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      DMA_1          at 0 range 25 .. 25;
      DMA_2          at 0 range 26 .. 26;
      DMA_3          at 0 range 27 .. 27;
      DMA_4          at 0 range 28 .. 28;
      DMA_5          at 0 range 29 .. 29;
      DMA_6          at 0 range 30 .. 30;
      DMA_7          at 0 range 31 .. 31;
   end record;

   --  Host Global Interrupt Clear Register
   type USBHS_HSTICR_Register is record
      --  Write-only. Device Connection Interrupt Clear
      DCONNIC       : Boolean := False;
      --  Write-only. Device Disconnection Interrupt Clear
      DDISCIC       : Boolean := False;
      --  Write-only. USB Reset Sent Interrupt Clear
      RSTIC         : Boolean := False;
      --  Write-only. Downstream Resume Sent Interrupt Clear
      RSMEDIC       : Boolean := False;
      --  Write-only. Upstream Resume Received Interrupt Clear
      RXRSMIC       : Boolean := False;
      --  Write-only. Host Start of Frame Interrupt Clear
      HSOFIC        : Boolean := False;
      --  Write-only. Host Wake-Up Interrupt Clear
      HWUPIC        : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTICR_Register use record
      DCONNIC       at 0 range 0 .. 0;
      DDISCIC       at 0 range 1 .. 1;
      RSTIC         at 0 range 2 .. 2;
      RSMEDIC       at 0 range 3 .. 3;
      RXRSMIC       at 0 range 4 .. 4;
      HSOFIC        at 0 range 5 .. 5;
      HWUPIC        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Host Global Interrupt Set Register
   type USBHS_HSTIFR_Register is record
      --  Write-only. Device Connection Interrupt Set
      DCONNIS       : Boolean := False;
      --  Write-only. Device Disconnection Interrupt Set
      DDISCIS       : Boolean := False;
      --  Write-only. USB Reset Sent Interrupt Set
      RSTIS         : Boolean := False;
      --  Write-only. Downstream Resume Sent Interrupt Set
      RSMEDIS       : Boolean := False;
      --  Write-only. Upstream Resume Received Interrupt Set
      RXRSMIS       : Boolean := False;
      --  Write-only. Host Start of Frame Interrupt Set
      HSOFIS        : Boolean := False;
      --  Write-only. Host Wake-Up Interrupt Set
      HWUPIS        : Boolean := False;
      --  unspecified
      Reserved_7_24 : HAL.UInt18 := 16#0#;
      --  Write-only. DMA Channel 0 Interrupt Set
      DMA_1         : Boolean := False;
      --  Write-only. DMA Channel 1 Interrupt Set
      DMA_2         : Boolean := False;
      --  Write-only. DMA Channel 2 Interrupt Set
      DMA_3         : Boolean := False;
      --  Write-only. DMA Channel 3 Interrupt Set
      DMA_4         : Boolean := False;
      --  Write-only. DMA Channel 4 Interrupt Set
      DMA_5         : Boolean := False;
      --  Write-only. DMA Channel 5 Interrupt Set
      DMA_6         : Boolean := False;
      --  Write-only. DMA Channel 6 Interrupt Set
      DMA_7         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTIFR_Register use record
      DCONNIS       at 0 range 0 .. 0;
      DDISCIS       at 0 range 1 .. 1;
      RSTIS         at 0 range 2 .. 2;
      RSMEDIS       at 0 range 3 .. 3;
      RXRSMIS       at 0 range 4 .. 4;
      HSOFIS        at 0 range 5 .. 5;
      HWUPIS        at 0 range 6 .. 6;
      Reserved_7_24 at 0 range 7 .. 24;
      DMA_1         at 0 range 25 .. 25;
      DMA_2         at 0 range 26 .. 26;
      DMA_3         at 0 range 27 .. 27;
      DMA_4         at 0 range 28 .. 28;
      DMA_5         at 0 range 29 .. 29;
      DMA_6         at 0 range 30 .. 30;
      DMA_7         at 0 range 31 .. 31;
   end record;

   --  Host Global Interrupt Mask Register
   type USBHS_HSTIMR_Register is record
      --  Read-only. Device Connection Interrupt Enable
      DCONNIE        : Boolean;
      --  Read-only. Device Disconnection Interrupt Enable
      DDISCIE        : Boolean;
      --  Read-only. USB Reset Sent Interrupt Enable
      RSTIE          : Boolean;
      --  Read-only. Downstream Resume Sent Interrupt Enable
      RSMEDIE        : Boolean;
      --  Read-only. Upstream Resume Received Interrupt Enable
      RXRSMIE        : Boolean;
      --  Read-only. Host Start of Frame Interrupt Enable
      HSOFIE         : Boolean;
      --  Read-only. Host Wake-Up Interrupt Enable
      HWUPIE         : Boolean;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Pipe 0 Interrupt Enable
      PEP_0          : Boolean;
      --  Read-only. Pipe 1 Interrupt Enable
      PEP_1          : Boolean;
      --  Read-only. Pipe 2 Interrupt Enable
      PEP_2          : Boolean;
      --  Read-only. Pipe 3 Interrupt Enable
      PEP_3          : Boolean;
      --  Read-only. Pipe 4 Interrupt Enable
      PEP_4          : Boolean;
      --  Read-only. Pipe 5 Interrupt Enable
      PEP_5          : Boolean;
      --  Read-only. Pipe 6 Interrupt Enable
      PEP_6          : Boolean;
      --  Read-only. Pipe 7 Interrupt Enable
      PEP_7          : Boolean;
      --  Read-only. Pipe 8 Interrupt Enable
      PEP_8          : Boolean;
      --  Read-only. Pipe 9 Interrupt Enable
      PEP_9          : Boolean;
      --  unspecified
      Reserved_18_24 : HAL.UInt7;
      --  Read-only. DMA Channel 0 Interrupt Enable
      DMA_1          : Boolean;
      --  Read-only. DMA Channel 1 Interrupt Enable
      DMA_2          : Boolean;
      --  Read-only. DMA Channel 2 Interrupt Enable
      DMA_3          : Boolean;
      --  Read-only. DMA Channel 3 Interrupt Enable
      DMA_4          : Boolean;
      --  Read-only. DMA Channel 4 Interrupt Enable
      DMA_5          : Boolean;
      --  Read-only. DMA Channel 5 Interrupt Enable
      DMA_6          : Boolean;
      --  Read-only. DMA Channel 6 Interrupt Enable
      DMA_7          : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTIMR_Register use record
      DCONNIE        at 0 range 0 .. 0;
      DDISCIE        at 0 range 1 .. 1;
      RSTIE          at 0 range 2 .. 2;
      RSMEDIE        at 0 range 3 .. 3;
      RXRSMIE        at 0 range 4 .. 4;
      HSOFIE         at 0 range 5 .. 5;
      HWUPIE         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PEP_0          at 0 range 8 .. 8;
      PEP_1          at 0 range 9 .. 9;
      PEP_2          at 0 range 10 .. 10;
      PEP_3          at 0 range 11 .. 11;
      PEP_4          at 0 range 12 .. 12;
      PEP_5          at 0 range 13 .. 13;
      PEP_6          at 0 range 14 .. 14;
      PEP_7          at 0 range 15 .. 15;
      PEP_8          at 0 range 16 .. 16;
      PEP_9          at 0 range 17 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      DMA_1          at 0 range 25 .. 25;
      DMA_2          at 0 range 26 .. 26;
      DMA_3          at 0 range 27 .. 27;
      DMA_4          at 0 range 28 .. 28;
      DMA_5          at 0 range 29 .. 29;
      DMA_6          at 0 range 30 .. 30;
      DMA_7          at 0 range 31 .. 31;
   end record;

   --  Host Global Interrupt Disable Register
   type USBHS_HSTIDR_Register is record
      --  Write-only. Device Connection Interrupt Disable
      DCONNIEC       : Boolean := False;
      --  Write-only. Device Disconnection Interrupt Disable
      DDISCIEC       : Boolean := False;
      --  Write-only. USB Reset Sent Interrupt Disable
      RSTIEC         : Boolean := False;
      --  Write-only. Downstream Resume Sent Interrupt Disable
      RSMEDIEC       : Boolean := False;
      --  Write-only. Upstream Resume Received Interrupt Disable
      RXRSMIEC       : Boolean := False;
      --  Write-only. Host Start of Frame Interrupt Disable
      HSOFIEC        : Boolean := False;
      --  Write-only. Host Wake-Up Interrupt Disable
      HWUPIEC        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. Pipe 0 Interrupt Disable
      PEP_0          : Boolean := False;
      --  Write-only. Pipe 1 Interrupt Disable
      PEP_1          : Boolean := False;
      --  Write-only. Pipe 2 Interrupt Disable
      PEP_2          : Boolean := False;
      --  Write-only. Pipe 3 Interrupt Disable
      PEP_3          : Boolean := False;
      --  Write-only. Pipe 4 Interrupt Disable
      PEP_4          : Boolean := False;
      --  Write-only. Pipe 5 Interrupt Disable
      PEP_5          : Boolean := False;
      --  Write-only. Pipe 6 Interrupt Disable
      PEP_6          : Boolean := False;
      --  Write-only. Pipe 7 Interrupt Disable
      PEP_7          : Boolean := False;
      --  Write-only. Pipe 8 Interrupt Disable
      PEP_8          : Boolean := False;
      --  Write-only. Pipe 9 Interrupt Disable
      PEP_9          : Boolean := False;
      --  unspecified
      Reserved_18_24 : HAL.UInt7 := 16#0#;
      --  Write-only. DMA Channel 0 Interrupt Disable
      DMA_1          : Boolean := False;
      --  Write-only. DMA Channel 1 Interrupt Disable
      DMA_2          : Boolean := False;
      --  Write-only. DMA Channel 2 Interrupt Disable
      DMA_3          : Boolean := False;
      --  Write-only. DMA Channel 3 Interrupt Disable
      DMA_4          : Boolean := False;
      --  Write-only. DMA Channel 4 Interrupt Disable
      DMA_5          : Boolean := False;
      --  Write-only. DMA Channel 5 Interrupt Disable
      DMA_6          : Boolean := False;
      --  Write-only. DMA Channel 6 Interrupt Disable
      DMA_7          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTIDR_Register use record
      DCONNIEC       at 0 range 0 .. 0;
      DDISCIEC       at 0 range 1 .. 1;
      RSTIEC         at 0 range 2 .. 2;
      RSMEDIEC       at 0 range 3 .. 3;
      RXRSMIEC       at 0 range 4 .. 4;
      HSOFIEC        at 0 range 5 .. 5;
      HWUPIEC        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PEP_0          at 0 range 8 .. 8;
      PEP_1          at 0 range 9 .. 9;
      PEP_2          at 0 range 10 .. 10;
      PEP_3          at 0 range 11 .. 11;
      PEP_4          at 0 range 12 .. 12;
      PEP_5          at 0 range 13 .. 13;
      PEP_6          at 0 range 14 .. 14;
      PEP_7          at 0 range 15 .. 15;
      PEP_8          at 0 range 16 .. 16;
      PEP_9          at 0 range 17 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      DMA_1          at 0 range 25 .. 25;
      DMA_2          at 0 range 26 .. 26;
      DMA_3          at 0 range 27 .. 27;
      DMA_4          at 0 range 28 .. 28;
      DMA_5          at 0 range 29 .. 29;
      DMA_6          at 0 range 30 .. 30;
      DMA_7          at 0 range 31 .. 31;
   end record;

   --  Host Global Interrupt Enable Register
   type USBHS_HSTIER_Register is record
      --  Write-only. Device Connection Interrupt Enable
      DCONNIES       : Boolean := False;
      --  Write-only. Device Disconnection Interrupt Enable
      DDISCIES       : Boolean := False;
      --  Write-only. USB Reset Sent Interrupt Enable
      RSTIES         : Boolean := False;
      --  Write-only. Downstream Resume Sent Interrupt Enable
      RSMEDIES       : Boolean := False;
      --  Write-only. Upstream Resume Received Interrupt Enable
      RXRSMIES       : Boolean := False;
      --  Write-only. Host Start of Frame Interrupt Enable
      HSOFIES        : Boolean := False;
      --  Write-only. Host Wake-Up Interrupt Enable
      HWUPIES        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. Pipe 0 Interrupt Enable
      PEP_0          : Boolean := False;
      --  Write-only. Pipe 1 Interrupt Enable
      PEP_1          : Boolean := False;
      --  Write-only. Pipe 2 Interrupt Enable
      PEP_2          : Boolean := False;
      --  Write-only. Pipe 3 Interrupt Enable
      PEP_3          : Boolean := False;
      --  Write-only. Pipe 4 Interrupt Enable
      PEP_4          : Boolean := False;
      --  Write-only. Pipe 5 Interrupt Enable
      PEP_5          : Boolean := False;
      --  Write-only. Pipe 6 Interrupt Enable
      PEP_6          : Boolean := False;
      --  Write-only. Pipe 7 Interrupt Enable
      PEP_7          : Boolean := False;
      --  Write-only. Pipe 8 Interrupt Enable
      PEP_8          : Boolean := False;
      --  Write-only. Pipe 9 Interrupt Enable
      PEP_9          : Boolean := False;
      --  unspecified
      Reserved_18_24 : HAL.UInt7 := 16#0#;
      --  Write-only. DMA Channel 0 Interrupt Enable
      DMA_1          : Boolean := False;
      --  Write-only. DMA Channel 1 Interrupt Enable
      DMA_2          : Boolean := False;
      --  Write-only. DMA Channel 2 Interrupt Enable
      DMA_3          : Boolean := False;
      --  Write-only. DMA Channel 3 Interrupt Enable
      DMA_4          : Boolean := False;
      --  Write-only. DMA Channel 4 Interrupt Enable
      DMA_5          : Boolean := False;
      --  Write-only. DMA Channel 5 Interrupt Enable
      DMA_6          : Boolean := False;
      --  Write-only. DMA Channel 6 Interrupt Enable
      DMA_7          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTIER_Register use record
      DCONNIES       at 0 range 0 .. 0;
      DDISCIES       at 0 range 1 .. 1;
      RSTIES         at 0 range 2 .. 2;
      RSMEDIES       at 0 range 3 .. 3;
      RXRSMIES       at 0 range 4 .. 4;
      HSOFIES        at 0 range 5 .. 5;
      HWUPIES        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PEP_0          at 0 range 8 .. 8;
      PEP_1          at 0 range 9 .. 9;
      PEP_2          at 0 range 10 .. 10;
      PEP_3          at 0 range 11 .. 11;
      PEP_4          at 0 range 12 .. 12;
      PEP_5          at 0 range 13 .. 13;
      PEP_6          at 0 range 14 .. 14;
      PEP_7          at 0 range 15 .. 15;
      PEP_8          at 0 range 16 .. 16;
      PEP_9          at 0 range 17 .. 17;
      Reserved_18_24 at 0 range 18 .. 24;
      DMA_1          at 0 range 25 .. 25;
      DMA_2          at 0 range 26 .. 26;
      DMA_3          at 0 range 27 .. 27;
      DMA_4          at 0 range 28 .. 28;
      DMA_5          at 0 range 29 .. 29;
      DMA_6          at 0 range 30 .. 30;
      DMA_7          at 0 range 31 .. 31;
   end record;

   --  USBHS_HSTPIP_PEN array
   type USBHS_HSTPIP_PEN_Field_Array is array (0 .. 8) of Boolean
     with Component_Size => 1, Size => 9;

   --  Type definition for USBHS_HSTPIP_PEN
   type USBHS_HSTPIP_PEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PEN as a value
            Val : HAL.UInt9;
         when True =>
            --  PEN as an array
            Arr : USBHS_HSTPIP_PEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for USBHS_HSTPIP_PEN_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  USBHS_HSTPIP_PRST array
   type USBHS_HSTPIP_PRST_Field_Array is array (0 .. 8) of Boolean
     with Component_Size => 1, Size => 9;

   --  Type definition for USBHS_HSTPIP_PRST
   type USBHS_HSTPIP_PRST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRST as a value
            Val : HAL.UInt9;
         when True =>
            --  PRST as an array
            Arr : USBHS_HSTPIP_PRST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for USBHS_HSTPIP_PRST_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Host Pipe Register
   type USBHS_HSTPIP_Register is record
      --  Pipe 0 Enable
      PEN            : USBHS_HSTPIP_PEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Pipe 0 Reset
      PRST           : USBHS_HSTPIP_PRST_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIP_Register use record
      PEN            at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRST           at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype USBHS_HSTFNUM_MFNUM_Field is HAL.UInt3;
   subtype USBHS_HSTFNUM_FNUM_Field is HAL.UInt11;
   subtype USBHS_HSTFNUM_FLENHIGH_Field is HAL.UInt8;

   --  Host Frame Number Register
   type USBHS_HSTFNUM_Register is record
      --  Micro Frame Number
      MFNUM          : USBHS_HSTFNUM_MFNUM_Field := 16#0#;
      --  Frame Number
      FNUM           : USBHS_HSTFNUM_FNUM_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Frame Length
      FLENHIGH       : USBHS_HSTFNUM_FLENHIGH_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTFNUM_Register use record
      MFNUM          at 0 range 0 .. 2;
      FNUM           at 0 range 3 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FLENHIGH       at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USBHS_HSTADDR1_HSTADDRP0_Field is HAL.UInt7;
   subtype USBHS_HSTADDR1_HSTADDRP1_Field is HAL.UInt7;
   subtype USBHS_HSTADDR1_HSTADDRP2_Field is HAL.UInt7;
   subtype USBHS_HSTADDR1_HSTADDRP3_Field is HAL.UInt7;

   --  Host Address 1 Register
   type USBHS_HSTADDR1_Register is record
      --  USB Host Address
      HSTADDRP0      : USBHS_HSTADDR1_HSTADDRP0_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  USB Host Address
      HSTADDRP1      : USBHS_HSTADDR1_HSTADDRP1_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  USB Host Address
      HSTADDRP2      : USBHS_HSTADDR1_HSTADDRP2_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  USB Host Address
      HSTADDRP3      : USBHS_HSTADDR1_HSTADDRP3_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTADDR1_Register use record
      HSTADDRP0      at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      HSTADDRP1      at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HSTADDRP2      at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      HSTADDRP3      at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype USBHS_HSTADDR2_HSTADDRP4_Field is HAL.UInt7;
   subtype USBHS_HSTADDR2_HSTADDRP5_Field is HAL.UInt7;
   subtype USBHS_HSTADDR2_HSTADDRP6_Field is HAL.UInt7;
   subtype USBHS_HSTADDR2_HSTADDRP7_Field is HAL.UInt7;

   --  Host Address 2 Register
   type USBHS_HSTADDR2_Register is record
      --  USB Host Address
      HSTADDRP4      : USBHS_HSTADDR2_HSTADDRP4_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  USB Host Address
      HSTADDRP5      : USBHS_HSTADDR2_HSTADDRP5_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  USB Host Address
      HSTADDRP6      : USBHS_HSTADDR2_HSTADDRP6_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  USB Host Address
      HSTADDRP7      : USBHS_HSTADDR2_HSTADDRP7_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTADDR2_Register use record
      HSTADDRP4      at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      HSTADDRP5      at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HSTADDRP6      at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      HSTADDRP7      at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype USBHS_HSTADDR3_HSTADDRP8_Field is HAL.UInt7;
   subtype USBHS_HSTADDR3_HSTADDRP9_Field is HAL.UInt7;

   --  Host Address 3 Register
   type USBHS_HSTADDR3_Register is record
      --  USB Host Address
      HSTADDRP8      : USBHS_HSTADDR3_HSTADDRP8_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  USB Host Address
      HSTADDRP9      : USBHS_HSTADDR3_HSTADDRP9_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTADDR3_Register use record
      HSTADDRP8      at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      HSTADDRP9      at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Pipe Banks
   type HSTPIPCFG_PBKSelect is
     (--  Single-bank pipe
      Val_1_BANK,
      --  Double-bank pipe
      Val_2_BANK,
      --  Triple-bank pipe
      Val_3_BANK)
     with Size => 2;
   for HSTPIPCFG_PBKSelect use
     (Val_1_BANK => 0,
      Val_2_BANK => 1,
      Val_3_BANK => 2);

   --  Pipe Size
   type HSTPIPCFG_PSIZESelect is
     (--  8 bytes
      Val_8_BYTE,
      --  16 bytes
      Val_16_BYTE,
      --  32 bytes
      Val_32_BYTE,
      --  64 bytes
      Val_64_BYTE,
      --  128 bytes
      Val_128_BYTE,
      --  256 bytes
      Val_256_BYTE,
      --  512 bytes
      Val_512_BYTE,
      --  1024 bytes
      Val_1024_BYTE)
     with Size => 3;
   for HSTPIPCFG_PSIZESelect use
     (Val_8_BYTE => 0,
      Val_16_BYTE => 1,
      Val_32_BYTE => 2,
      Val_64_BYTE => 3,
      Val_128_BYTE => 4,
      Val_256_BYTE => 5,
      Val_512_BYTE => 6,
      Val_1024_BYTE => 7);

   --  Pipe Token
   type HSTPIPCFG_PTOKENSelect is
     (--  SETUP
      SETUP,
      --  IN
      IN_k,
      --  OUT
      OUT_k)
     with Size => 2;
   for HSTPIPCFG_PTOKENSelect use
     (SETUP => 0,
      IN_k => 1,
      OUT_k => 2);

   --  Pipe Type
   type HSTPIPCFG_PTYPESelect is
     (--  Control
      CTRL,
      --  Isochronous
      ISO,
      --  Bulk
      BLK,
      --  Interrupt
      INTRPT)
     with Size => 2;
   for HSTPIPCFG_PTYPESelect use
     (CTRL => 0,
      ISO => 1,
      BLK => 2,
      INTRPT => 3);

   subtype USBHS_HSTPIPCFG_PEPNUM_Field is HAL.UInt4;
   subtype USBHS_HSTPIPCFG_INTFRQ_Field is HAL.UInt8;

   --  Host Pipe Configuration Register
   type USBHS_HSTPIPCFG_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Pipe Memory Allocate
      ALLOC          : Boolean := False;
      --  Pipe Banks
      PBK            : HSTPIPCFG_PBKSelect := SAM_SVD.USBHS.Val_1_BANK;
      --  Pipe Size
      PSIZE          : HSTPIPCFG_PSIZESelect := SAM_SVD.USBHS.Val_8_BYTE;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Pipe Token
      PTOKEN         : HSTPIPCFG_PTOKENSelect := SAM_SVD.USBHS.SETUP;
      --  Automatic Switch
      AUTOSW         : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Pipe Type
      PTYPE          : HSTPIPCFG_PTYPESelect := SAM_SVD.USBHS.CTRL;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Pipe Endpoint Number
      PEPNUM         : USBHS_HSTPIPCFG_PEPNUM_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Pipe Interrupt Request Frequency
      INTFRQ         : USBHS_HSTPIPCFG_INTFRQ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPCFG_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ALLOC          at 0 range 1 .. 1;
      PBK            at 0 range 2 .. 3;
      PSIZE          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PTOKEN         at 0 range 8 .. 9;
      AUTOSW         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PTYPE          at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PEPNUM         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      INTFRQ         at 0 range 24 .. 31;
   end record;

   --  Host Pipe Configuration Register
   type USBHS_HSTPIPCFG_Registers is array (0 .. 9)
     of USBHS_HSTPIPCFG_Register;

   --  Pipe Banks
   type HSTPIPCFG_CTRL_BULK_MODE_PBKSelect is
     (--  Single-bank pipe
      Val_1_BANK,
      --  Double-bank pipe
      Val_2_BANK,
      --  Triple-bank pipe
      Val_3_BANK)
     with Size => 2;
   for HSTPIPCFG_CTRL_BULK_MODE_PBKSelect use
     (Val_1_BANK => 0,
      Val_2_BANK => 1,
      Val_3_BANK => 2);

   --  Pipe Size
   type HSTPIPCFG_CTRL_BULK_MODE_PSIZESelect is
     (--  8 bytes
      Val_8_BYTE,
      --  16 bytes
      Val_16_BYTE,
      --  32 bytes
      Val_32_BYTE,
      --  64 bytes
      Val_64_BYTE,
      --  128 bytes
      Val_128_BYTE,
      --  256 bytes
      Val_256_BYTE,
      --  512 bytes
      Val_512_BYTE,
      --  1024 bytes
      Val_1024_BYTE)
     with Size => 3;
   for HSTPIPCFG_CTRL_BULK_MODE_PSIZESelect use
     (Val_8_BYTE => 0,
      Val_16_BYTE => 1,
      Val_32_BYTE => 2,
      Val_64_BYTE => 3,
      Val_128_BYTE => 4,
      Val_256_BYTE => 5,
      Val_512_BYTE => 6,
      Val_1024_BYTE => 7);

   --  Pipe Token
   type HSTPIPCFG_CTRL_BULK_MODE_PTOKENSelect is
     (--  SETUP
      SETUP,
      --  IN
      IN_k,
      --  OUT
      OUT_k)
     with Size => 2;
   for HSTPIPCFG_CTRL_BULK_MODE_PTOKENSelect use
     (SETUP => 0,
      IN_k => 1,
      OUT_k => 2);

   --  Pipe Type
   type HSTPIPCFG_CTRL_BULK_MODE_PTYPESelect is
     (--  Control
      CTRL,
      --  Isochronous
      ISO,
      --  Bulk
      BLK,
      --  Interrupt
      INTRPT)
     with Size => 2;
   for HSTPIPCFG_CTRL_BULK_MODE_PTYPESelect use
     (CTRL => 0,
      ISO => 1,
      BLK => 2,
      INTRPT => 3);

   subtype USBHS_HSTPIPCFG_CTRL_BULK_MODE_PEPNUM_Field is HAL.UInt4;
   subtype USBHS_HSTPIPCFG_CTRL_BULK_MODE_BINTERVAL_Field is HAL.UInt8;

   --  Host Pipe Configuration Register
   type USBHS_HSTPIPCFG_CTRL_BULK_MODE_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Pipe Memory Allocate
      ALLOC          : Boolean := False;
      --  Pipe Banks
      PBK            : HSTPIPCFG_CTRL_BULK_MODE_PBKSelect :=
                        SAM_SVD.USBHS.Val_1_BANK;
      --  Pipe Size
      PSIZE          : HSTPIPCFG_CTRL_BULK_MODE_PSIZESelect :=
                        SAM_SVD.USBHS.Val_8_BYTE;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Pipe Token
      PTOKEN         : HSTPIPCFG_CTRL_BULK_MODE_PTOKENSelect :=
                        SAM_SVD.USBHS.SETUP;
      --  Automatic Switch
      AUTOSW         : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Pipe Type
      PTYPE          : HSTPIPCFG_CTRL_BULK_MODE_PTYPESelect :=
                        SAM_SVD.USBHS.CTRL;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Pipe Endpoint Number
      PEPNUM         : USBHS_HSTPIPCFG_CTRL_BULK_MODE_PEPNUM_Field := 16#0#;
      --  Ping Enable
      PINGEN         : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  bInterval Parameter for the Bulk-Out/Ping Transaction
      BINTERVAL      : USBHS_HSTPIPCFG_CTRL_BULK_MODE_BINTERVAL_Field :=
                        16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPCFG_CTRL_BULK_MODE_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ALLOC          at 0 range 1 .. 1;
      PBK            at 0 range 2 .. 3;
      PSIZE          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PTOKEN         at 0 range 8 .. 9;
      AUTOSW         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PTYPE          at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PEPNUM         at 0 range 16 .. 19;
      PINGEN         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      BINTERVAL      at 0 range 24 .. 31;
   end record;

   --  Host Pipe Configuration Register
   type USBHS_HSTPIPCFG_CTRL_BULK_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPCFG_CTRL_BULK_MODE_Register;

   --  Data Toggle Sequence
   type HSTPIPISR_CTRL_MODE_DTSEQSelect is
     (--  Data0 toggle sequence
      DATA0,
      --  Data1 toggle sequence
      DATA1)
     with Size => 2;
   for HSTPIPISR_CTRL_MODE_DTSEQSelect use
     (DATA0 => 0,
      DATA1 => 1);

   --  Number of Busy Banks
   type HSTPIPISR_CTRL_MODE_NBUSYBKSelect is
     (--  0 busy bank (all banks free)
      Val_0_BUSY,
      --  1 busy bank
      Val_1_BUSY,
      --  2 busy banks
      Val_2_BUSY,
      --  3 busy banks
      Val_3_BUSY)
     with Size => 2;
   for HSTPIPISR_CTRL_MODE_NBUSYBKSelect use
     (Val_0_BUSY => 0,
      Val_1_BUSY => 1,
      Val_2_BUSY => 2,
      Val_3_BUSY => 3);

   --  Current Bank
   type HSTPIPISR_CTRL_MODE_CURRBKSelect is
     (--  Current bank is bank0
      BANK0,
      --  Current bank is bank1
      BANK1,
      --  Current bank is bank2
      BANK2)
     with Size => 2;
   for HSTPIPISR_CTRL_MODE_CURRBKSelect use
     (BANK0 => 0,
      BANK1 => 1,
      BANK2 => 2);

   subtype USBHS_HSTPIPISR_CTRL_MODE_PBYCT_Field is HAL.UInt11;

   --  Host Pipe Status Register
   type USBHS_HSTPIPISR_CTRL_MODE_Register is record
      --  Read-only. Received IN Data Interrupt
      RXINI          : Boolean;
      --  Read-only. Transmitted OUT Data Interrupt
      TXOUTI         : Boolean;
      --  Read-only. Transmitted SETUP Interrupt
      TXSTPI         : Boolean;
      --  Read-only. Pipe Error Interrupt
      PERRI          : Boolean;
      --  Read-only. NAKed Interrupt
      NAKEDI         : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFI         : Boolean;
      --  Read-only. Received STALLed Interrupt
      RXSTALLDI      : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKETI   : Boolean;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : HSTPIPISR_CTRL_MODE_DTSEQSelect;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Number of Busy Banks
      NBUSYBK        : HSTPIPISR_CTRL_MODE_NBUSYBKSelect;
      --  Read-only. Current Bank
      CURRBK         : HSTPIPISR_CTRL_MODE_CURRBKSelect;
      --  Read-only. Read/Write Allowed
      RWALL          : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Configuration OK Status
      CFGOK          : Boolean;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. Pipe Byte Count
      PBYCT          : USBHS_HSTPIPISR_CTRL_MODE_PBYCT_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPISR_CTRL_MODE_Register use record
      RXINI          at 0 range 0 .. 0;
      TXOUTI         at 0 range 1 .. 1;
      TXSTPI         at 0 range 2 .. 2;
      PERRI          at 0 range 3 .. 3;
      NAKEDI         at 0 range 4 .. 4;
      OVERFI         at 0 range 5 .. 5;
      RXSTALLDI      at 0 range 6 .. 6;
      SHORTPACKETI   at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      RWALL          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CFGOK          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      PBYCT          at 0 range 20 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Host Pipe Status Register
   type USBHS_HSTPIPISR_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPISR_CTRL_MODE_Register;

   --  Data Toggle Sequence
   type HSTPIPISR_ISO_MODE_DTSEQSelect is
     (--  Data0 toggle sequence
      DATA0,
      --  Data1 toggle sequence
      DATA1)
     with Size => 2;
   for HSTPIPISR_ISO_MODE_DTSEQSelect use
     (DATA0 => 0,
      DATA1 => 1);

   --  Number of Busy Banks
   type HSTPIPISR_ISO_MODE_NBUSYBKSelect is
     (--  0 busy bank (all banks free)
      Val_0_BUSY,
      --  1 busy bank
      Val_1_BUSY,
      --  2 busy banks
      Val_2_BUSY,
      --  3 busy banks
      Val_3_BUSY)
     with Size => 2;
   for HSTPIPISR_ISO_MODE_NBUSYBKSelect use
     (Val_0_BUSY => 0,
      Val_1_BUSY => 1,
      Val_2_BUSY => 2,
      Val_3_BUSY => 3);

   --  Current Bank
   type HSTPIPISR_ISO_MODE_CURRBKSelect is
     (--  Current bank is bank0
      BANK0,
      --  Current bank is bank1
      BANK1,
      --  Current bank is bank2
      BANK2)
     with Size => 2;
   for HSTPIPISR_ISO_MODE_CURRBKSelect use
     (BANK0 => 0,
      BANK1 => 1,
      BANK2 => 2);

   subtype USBHS_HSTPIPISR_ISO_MODE_PBYCT_Field is HAL.UInt11;

   --  Host Pipe Status Register
   type USBHS_HSTPIPISR_ISO_MODE_Register is record
      --  Read-only. Received IN Data Interrupt
      RXINI          : Boolean;
      --  Read-only. Transmitted OUT Data Interrupt
      TXOUTI         : Boolean;
      --  Read-only. Underflow Interrupt
      UNDERFI        : Boolean;
      --  Read-only. Pipe Error Interrupt
      PERRI          : Boolean;
      --  Read-only. NAKed Interrupt
      NAKEDI         : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFI         : Boolean;
      --  Read-only. CRC Error Interrupt
      CRCERRI        : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKETI   : Boolean;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : HSTPIPISR_ISO_MODE_DTSEQSelect;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Number of Busy Banks
      NBUSYBK        : HSTPIPISR_ISO_MODE_NBUSYBKSelect;
      --  Read-only. Current Bank
      CURRBK         : HSTPIPISR_ISO_MODE_CURRBKSelect;
      --  Read-only. Read/Write Allowed
      RWALL          : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Configuration OK Status
      CFGOK          : Boolean;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. Pipe Byte Count
      PBYCT          : USBHS_HSTPIPISR_ISO_MODE_PBYCT_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPISR_ISO_MODE_Register use record
      RXINI          at 0 range 0 .. 0;
      TXOUTI         at 0 range 1 .. 1;
      UNDERFI        at 0 range 2 .. 2;
      PERRI          at 0 range 3 .. 3;
      NAKEDI         at 0 range 4 .. 4;
      OVERFI         at 0 range 5 .. 5;
      CRCERRI        at 0 range 6 .. 6;
      SHORTPACKETI   at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      RWALL          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CFGOK          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      PBYCT          at 0 range 20 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Host Pipe Status Register
   type USBHS_HSTPIPISR_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPISR_ISO_MODE_Register;

   --  Data Toggle Sequence
   type HSTPIPISR_BLK_MODE_DTSEQSelect is
     (--  Data0 toggle sequence
      DATA0,
      --  Data1 toggle sequence
      DATA1)
     with Size => 2;
   for HSTPIPISR_BLK_MODE_DTSEQSelect use
     (DATA0 => 0,
      DATA1 => 1);

   --  Number of Busy Banks
   type HSTPIPISR_BLK_MODE_NBUSYBKSelect is
     (--  0 busy bank (all banks free)
      Val_0_BUSY,
      --  1 busy bank
      Val_1_BUSY,
      --  2 busy banks
      Val_2_BUSY,
      --  3 busy banks
      Val_3_BUSY)
     with Size => 2;
   for HSTPIPISR_BLK_MODE_NBUSYBKSelect use
     (Val_0_BUSY => 0,
      Val_1_BUSY => 1,
      Val_2_BUSY => 2,
      Val_3_BUSY => 3);

   --  Current Bank
   type HSTPIPISR_BLK_MODE_CURRBKSelect is
     (--  Current bank is bank0
      BANK0,
      --  Current bank is bank1
      BANK1,
      --  Current bank is bank2
      BANK2)
     with Size => 2;
   for HSTPIPISR_BLK_MODE_CURRBKSelect use
     (BANK0 => 0,
      BANK1 => 1,
      BANK2 => 2);

   subtype USBHS_HSTPIPISR_BLK_MODE_PBYCT_Field is HAL.UInt11;

   --  Host Pipe Status Register
   type USBHS_HSTPIPISR_BLK_MODE_Register is record
      --  Read-only. Received IN Data Interrupt
      RXINI          : Boolean;
      --  Read-only. Transmitted OUT Data Interrupt
      TXOUTI         : Boolean;
      --  Read-only. Transmitted SETUP Interrupt
      TXSTPI         : Boolean;
      --  Read-only. Pipe Error Interrupt
      PERRI          : Boolean;
      --  Read-only. NAKed Interrupt
      NAKEDI         : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFI         : Boolean;
      --  Read-only. Received STALLed Interrupt
      RXSTALLDI      : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKETI   : Boolean;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : HSTPIPISR_BLK_MODE_DTSEQSelect;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Number of Busy Banks
      NBUSYBK        : HSTPIPISR_BLK_MODE_NBUSYBKSelect;
      --  Read-only. Current Bank
      CURRBK         : HSTPIPISR_BLK_MODE_CURRBKSelect;
      --  Read-only. Read/Write Allowed
      RWALL          : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Configuration OK Status
      CFGOK          : Boolean;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. Pipe Byte Count
      PBYCT          : USBHS_HSTPIPISR_BLK_MODE_PBYCT_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPISR_BLK_MODE_Register use record
      RXINI          at 0 range 0 .. 0;
      TXOUTI         at 0 range 1 .. 1;
      TXSTPI         at 0 range 2 .. 2;
      PERRI          at 0 range 3 .. 3;
      NAKEDI         at 0 range 4 .. 4;
      OVERFI         at 0 range 5 .. 5;
      RXSTALLDI      at 0 range 6 .. 6;
      SHORTPACKETI   at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      RWALL          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CFGOK          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      PBYCT          at 0 range 20 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Host Pipe Status Register
   type USBHS_HSTPIPISR_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPISR_BLK_MODE_Register;

   --  Data Toggle Sequence
   type HSTPIPISR_INTRPT_MODE_DTSEQSelect is
     (--  Data0 toggle sequence
      DATA0,
      --  Data1 toggle sequence
      DATA1)
     with Size => 2;
   for HSTPIPISR_INTRPT_MODE_DTSEQSelect use
     (DATA0 => 0,
      DATA1 => 1);

   --  Number of Busy Banks
   type HSTPIPISR_INTRPT_MODE_NBUSYBKSelect is
     (--  0 busy bank (all banks free)
      Val_0_BUSY,
      --  1 busy bank
      Val_1_BUSY,
      --  2 busy banks
      Val_2_BUSY,
      --  3 busy banks
      Val_3_BUSY)
     with Size => 2;
   for HSTPIPISR_INTRPT_MODE_NBUSYBKSelect use
     (Val_0_BUSY => 0,
      Val_1_BUSY => 1,
      Val_2_BUSY => 2,
      Val_3_BUSY => 3);

   --  Current Bank
   type HSTPIPISR_INTRPT_MODE_CURRBKSelect is
     (--  Current bank is bank0
      BANK0,
      --  Current bank is bank1
      BANK1,
      --  Current bank is bank2
      BANK2)
     with Size => 2;
   for HSTPIPISR_INTRPT_MODE_CURRBKSelect use
     (BANK0 => 0,
      BANK1 => 1,
      BANK2 => 2);

   subtype USBHS_HSTPIPISR_INTRPT_MODE_PBYCT_Field is HAL.UInt11;

   --  Host Pipe Status Register
   type USBHS_HSTPIPISR_INTRPT_MODE_Register is record
      --  Read-only. Received IN Data Interrupt
      RXINI          : Boolean;
      --  Read-only. Transmitted OUT Data Interrupt
      TXOUTI         : Boolean;
      --  Read-only. Underflow Interrupt
      UNDERFI        : Boolean;
      --  Read-only. Pipe Error Interrupt
      PERRI          : Boolean;
      --  Read-only. NAKed Interrupt
      NAKEDI         : Boolean;
      --  Read-only. Overflow Interrupt
      OVERFI         : Boolean;
      --  Read-only. Received STALLed Interrupt
      RXSTALLDI      : Boolean;
      --  Read-only. Short Packet Interrupt
      SHORTPACKETI   : Boolean;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : HSTPIPISR_INTRPT_MODE_DTSEQSelect;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Number of Busy Banks
      NBUSYBK        : HSTPIPISR_INTRPT_MODE_NBUSYBKSelect;
      --  Read-only. Current Bank
      CURRBK         : HSTPIPISR_INTRPT_MODE_CURRBKSelect;
      --  Read-only. Read/Write Allowed
      RWALL          : Boolean;
      --  unspecified
      Reserved_17_17 : HAL.Bit;
      --  Read-only. Configuration OK Status
      CFGOK          : Boolean;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. Pipe Byte Count
      PBYCT          : USBHS_HSTPIPISR_INTRPT_MODE_PBYCT_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPISR_INTRPT_MODE_Register use record
      RXINI          at 0 range 0 .. 0;
      TXOUTI         at 0 range 1 .. 1;
      UNDERFI        at 0 range 2 .. 2;
      PERRI          at 0 range 3 .. 3;
      NAKEDI         at 0 range 4 .. 4;
      OVERFI         at 0 range 5 .. 5;
      RXSTALLDI      at 0 range 6 .. 6;
      SHORTPACKETI   at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      RWALL          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CFGOK          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      PBYCT          at 0 range 20 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Host Pipe Status Register
   type USBHS_HSTPIPISR_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPISR_INTRPT_MODE_Register;

   --  Host Pipe Clear Register
   type USBHS_HSTPIPICR_CTRL_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Clear
      RXINIC        : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Clear
      TXOUTIC       : Boolean := False;
      --  Write-only. Transmitted SETUP Interrupt Clear
      TXSTPIC       : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Write-only. NAKed Interrupt Clear
      NAKEDIC       : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFIC       : Boolean := False;
      --  Write-only. Received STALLed Interrupt Clear
      RXSTALLDIC    : Boolean := False;
      --  Write-only. Short Packet Interrupt Clear
      SHORTPACKETIC : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPICR_CTRL_MODE_Register use record
      RXINIC        at 0 range 0 .. 0;
      TXOUTIC       at 0 range 1 .. 1;
      TXSTPIC       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      NAKEDIC       at 0 range 4 .. 4;
      OVERFIC       at 0 range 5 .. 5;
      RXSTALLDIC    at 0 range 6 .. 6;
      SHORTPACKETIC at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Host Pipe Clear Register
   type USBHS_HSTPIPICR_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPICR_CTRL_MODE_Register;

   --  Host Pipe Clear Register
   type USBHS_HSTPIPICR_ISO_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Clear
      RXINIC        : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Clear
      TXOUTIC       : Boolean := False;
      --  Write-only. Underflow Interrupt Clear
      UNDERFIC      : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Write-only. NAKed Interrupt Clear
      NAKEDIC       : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFIC       : Boolean := False;
      --  Write-only. CRC Error Interrupt Clear
      CRCERRIC      : Boolean := False;
      --  Write-only. Short Packet Interrupt Clear
      SHORTPACKETIC : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPICR_ISO_MODE_Register use record
      RXINIC        at 0 range 0 .. 0;
      TXOUTIC       at 0 range 1 .. 1;
      UNDERFIC      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      NAKEDIC       at 0 range 4 .. 4;
      OVERFIC       at 0 range 5 .. 5;
      CRCERRIC      at 0 range 6 .. 6;
      SHORTPACKETIC at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Host Pipe Clear Register
   type USBHS_HSTPIPICR_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPICR_ISO_MODE_Register;

   --  Host Pipe Clear Register
   type USBHS_HSTPIPICR_BLK_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Clear
      RXINIC        : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Clear
      TXOUTIC       : Boolean := False;
      --  Write-only. Transmitted SETUP Interrupt Clear
      TXSTPIC       : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Write-only. NAKed Interrupt Clear
      NAKEDIC       : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFIC       : Boolean := False;
      --  Write-only. Received STALLed Interrupt Clear
      RXSTALLDIC    : Boolean := False;
      --  Write-only. Short Packet Interrupt Clear
      SHORTPACKETIC : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPICR_BLK_MODE_Register use record
      RXINIC        at 0 range 0 .. 0;
      TXOUTIC       at 0 range 1 .. 1;
      TXSTPIC       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      NAKEDIC       at 0 range 4 .. 4;
      OVERFIC       at 0 range 5 .. 5;
      RXSTALLDIC    at 0 range 6 .. 6;
      SHORTPACKETIC at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Host Pipe Clear Register
   type USBHS_HSTPIPICR_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPICR_BLK_MODE_Register;

   --  Host Pipe Clear Register
   type USBHS_HSTPIPICR_INTRPT_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Clear
      RXINIC        : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Clear
      TXOUTIC       : Boolean := False;
      --  Write-only. Underflow Interrupt Clear
      UNDERFIC      : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Write-only. NAKed Interrupt Clear
      NAKEDIC       : Boolean := False;
      --  Write-only. Overflow Interrupt Clear
      OVERFIC       : Boolean := False;
      --  Write-only. Received STALLed Interrupt Clear
      RXSTALLDIC    : Boolean := False;
      --  Write-only. Short Packet Interrupt Clear
      SHORTPACKETIC : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPICR_INTRPT_MODE_Register use record
      RXINIC        at 0 range 0 .. 0;
      TXOUTIC       at 0 range 1 .. 1;
      UNDERFIC      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      NAKEDIC       at 0 range 4 .. 4;
      OVERFIC       at 0 range 5 .. 5;
      RXSTALLDIC    at 0 range 6 .. 6;
      SHORTPACKETIC at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Host Pipe Clear Register
   type USBHS_HSTPIPICR_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPICR_INTRPT_MODE_Register;

   --  Host Pipe Set Register
   type USBHS_HSTPIPIFR_CTRL_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Set
      RXINIS         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Set
      TXOUTIS        : Boolean := False;
      --  Write-only. Transmitted SETUP Interrupt Set
      TXSTPIS        : Boolean := False;
      --  Write-only. Pipe Error Interrupt Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKed Interrupt Set
      NAKEDIS        : Boolean := False;
      --  Write-only. Overflow Interrupt Set
      OVERFIS        : Boolean := False;
      --  Write-only. Received STALLed Interrupt Set
      RXSTALLDIS     : Boolean := False;
      --  Write-only. Short Packet Interrupt Set
      SHORTPACKETIS  : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIFR_CTRL_MODE_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      OVERFIS        at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      SHORTPACKETIS  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Host Pipe Set Register
   type USBHS_HSTPIPIFR_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIFR_CTRL_MODE_Register;

   --  Host Pipe Set Register
   type USBHS_HSTPIPIFR_ISO_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Set
      RXINIS         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Set
      TXOUTIS        : Boolean := False;
      --  Write-only. Underflow Interrupt Set
      UNDERFIS       : Boolean := False;
      --  Write-only. Pipe Error Interrupt Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKed Interrupt Set
      NAKEDIS        : Boolean := False;
      --  Write-only. Overflow Interrupt Set
      OVERFIS        : Boolean := False;
      --  Write-only. CRC Error Interrupt Set
      CRCERRIS       : Boolean := False;
      --  Write-only. Short Packet Interrupt Set
      SHORTPACKETIS  : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIFR_ISO_MODE_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      UNDERFIS       at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      OVERFIS        at 0 range 5 .. 5;
      CRCERRIS       at 0 range 6 .. 6;
      SHORTPACKETIS  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Host Pipe Set Register
   type USBHS_HSTPIPIFR_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIFR_ISO_MODE_Register;

   --  Host Pipe Set Register
   type USBHS_HSTPIPIFR_BLK_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Set
      RXINIS         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Set
      TXOUTIS        : Boolean := False;
      --  Write-only. Transmitted SETUP Interrupt Set
      TXSTPIS        : Boolean := False;
      --  Write-only. Pipe Error Interrupt Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKed Interrupt Set
      NAKEDIS        : Boolean := False;
      --  Write-only. Overflow Interrupt Set
      OVERFIS        : Boolean := False;
      --  Write-only. Received STALLed Interrupt Set
      RXSTALLDIS     : Boolean := False;
      --  Write-only. Short Packet Interrupt Set
      SHORTPACKETIS  : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIFR_BLK_MODE_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      OVERFIS        at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      SHORTPACKETIS  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Host Pipe Set Register
   type USBHS_HSTPIPIFR_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIFR_BLK_MODE_Register;

   --  Host Pipe Set Register
   type USBHS_HSTPIPIFR_INTRPT_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Set
      RXINIS         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Set
      TXOUTIS        : Boolean := False;
      --  Write-only. Underflow Interrupt Set
      UNDERFIS       : Boolean := False;
      --  Write-only. Pipe Error Interrupt Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKed Interrupt Set
      NAKEDIS        : Boolean := False;
      --  Write-only. Overflow Interrupt Set
      OVERFIS        : Boolean := False;
      --  Write-only. Received STALLed Interrupt Set
      RXSTALLDIS     : Boolean := False;
      --  Write-only. Short Packet Interrupt Set
      SHORTPACKETIS  : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIFR_INTRPT_MODE_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      UNDERFIS       at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      OVERFIS        at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      SHORTPACKETIS  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Host Pipe Set Register
   type USBHS_HSTPIPIFR_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIFR_INTRPT_MODE_Register;

   --  Host Pipe Mask Register
   type USBHS_HSTPIPIMR_CTRL_MODE_Register is record
      --  Read-only. Received IN Data Interrupt Enable
      RXINE          : Boolean;
      --  Read-only. Transmitted OUT Data Interrupt Enable
      TXOUTE         : Boolean;
      --  Read-only. Transmitted SETUP Interrupt Enable
      TXSTPE         : Boolean;
      --  Read-only. Pipe Error Interrupt Enable
      PERRE          : Boolean;
      --  Read-only. NAKed Interrupt Enable
      NAKEDE         : Boolean;
      --  Read-only. Overflow Interrupt Enable
      OVERFIE        : Boolean;
      --  Read-only. Received STALLed Interrupt Enable
      RXSTALLDE      : Boolean;
      --  Read-only. Short Packet Interrupt Enable
      SHORTPACKETIE  : Boolean;
      --  unspecified
      Reserved_8_11  : HAL.UInt4;
      --  Read-only. Number of Busy Banks Interrupt Enable
      NBUSYBKE       : Boolean;
      --  unspecified
      Reserved_13_13 : HAL.Bit;
      --  Read-only. FIFO Control
      FIFOCON        : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Pipe Interrupts Disable HDMA Request Enable
      PDISHDMA       : Boolean;
      --  Read-only. Pipe Freeze
      PFREEZE        : Boolean;
      --  Read-only. Reset Data Toggle
      RSTDT          : Boolean;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIMR_CTRL_MODE_Register use record
      RXINE          at 0 range 0 .. 0;
      TXOUTE         at 0 range 1 .. 1;
      TXSTPE         at 0 range 2 .. 2;
      PERRE          at 0 range 3 .. 3;
      NAKEDE         at 0 range 4 .. 4;
      OVERFIE        at 0 range 5 .. 5;
      RXSTALLDE      at 0 range 6 .. 6;
      SHORTPACKETIE  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PDISHDMA       at 0 range 16 .. 16;
      PFREEZE        at 0 range 17 .. 17;
      RSTDT          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Host Pipe Mask Register
   type USBHS_HSTPIPIMR_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIMR_CTRL_MODE_Register;

   --  Host Pipe Mask Register
   type USBHS_HSTPIPIMR_ISO_MODE_Register is record
      --  Read-only. Received IN Data Interrupt Enable
      RXINE          : Boolean;
      --  Read-only. Transmitted OUT Data Interrupt Enable
      TXOUTE         : Boolean;
      --  Read-only. Underflow Interrupt Enable
      UNDERFIE       : Boolean;
      --  Read-only. Pipe Error Interrupt Enable
      PERRE          : Boolean;
      --  Read-only. NAKed Interrupt Enable
      NAKEDE         : Boolean;
      --  Read-only. Overflow Interrupt Enable
      OVERFIE        : Boolean;
      --  Read-only. CRC Error Interrupt Enable
      CRCERRE        : Boolean;
      --  Read-only. Short Packet Interrupt Enable
      SHORTPACKETIE  : Boolean;
      --  unspecified
      Reserved_8_11  : HAL.UInt4;
      --  Read-only. Number of Busy Banks Interrupt Enable
      NBUSYBKE       : Boolean;
      --  unspecified
      Reserved_13_13 : HAL.Bit;
      --  Read-only. FIFO Control
      FIFOCON        : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Pipe Interrupts Disable HDMA Request Enable
      PDISHDMA       : Boolean;
      --  Read-only. Pipe Freeze
      PFREEZE        : Boolean;
      --  Read-only. Reset Data Toggle
      RSTDT          : Boolean;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIMR_ISO_MODE_Register use record
      RXINE          at 0 range 0 .. 0;
      TXOUTE         at 0 range 1 .. 1;
      UNDERFIE       at 0 range 2 .. 2;
      PERRE          at 0 range 3 .. 3;
      NAKEDE         at 0 range 4 .. 4;
      OVERFIE        at 0 range 5 .. 5;
      CRCERRE        at 0 range 6 .. 6;
      SHORTPACKETIE  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PDISHDMA       at 0 range 16 .. 16;
      PFREEZE        at 0 range 17 .. 17;
      RSTDT          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Host Pipe Mask Register
   type USBHS_HSTPIPIMR_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIMR_ISO_MODE_Register;

   --  Host Pipe Mask Register
   type USBHS_HSTPIPIMR_BLK_MODE_Register is record
      --  Read-only. Received IN Data Interrupt Enable
      RXINE          : Boolean;
      --  Read-only. Transmitted OUT Data Interrupt Enable
      TXOUTE         : Boolean;
      --  Read-only. Transmitted SETUP Interrupt Enable
      TXSTPE         : Boolean;
      --  Read-only. Pipe Error Interrupt Enable
      PERRE          : Boolean;
      --  Read-only. NAKed Interrupt Enable
      NAKEDE         : Boolean;
      --  Read-only. Overflow Interrupt Enable
      OVERFIE        : Boolean;
      --  Read-only. Received STALLed Interrupt Enable
      RXSTALLDE      : Boolean;
      --  Read-only. Short Packet Interrupt Enable
      SHORTPACKETIE  : Boolean;
      --  unspecified
      Reserved_8_11  : HAL.UInt4;
      --  Read-only. Number of Busy Banks Interrupt Enable
      NBUSYBKE       : Boolean;
      --  unspecified
      Reserved_13_13 : HAL.Bit;
      --  Read-only. FIFO Control
      FIFOCON        : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Pipe Interrupts Disable HDMA Request Enable
      PDISHDMA       : Boolean;
      --  Read-only. Pipe Freeze
      PFREEZE        : Boolean;
      --  Read-only. Reset Data Toggle
      RSTDT          : Boolean;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIMR_BLK_MODE_Register use record
      RXINE          at 0 range 0 .. 0;
      TXOUTE         at 0 range 1 .. 1;
      TXSTPE         at 0 range 2 .. 2;
      PERRE          at 0 range 3 .. 3;
      NAKEDE         at 0 range 4 .. 4;
      OVERFIE        at 0 range 5 .. 5;
      RXSTALLDE      at 0 range 6 .. 6;
      SHORTPACKETIE  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PDISHDMA       at 0 range 16 .. 16;
      PFREEZE        at 0 range 17 .. 17;
      RSTDT          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Host Pipe Mask Register
   type USBHS_HSTPIPIMR_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIMR_BLK_MODE_Register;

   --  Host Pipe Mask Register
   type USBHS_HSTPIPIMR_INTRPT_MODE_Register is record
      --  Read-only. Received IN Data Interrupt Enable
      RXINE          : Boolean;
      --  Read-only. Transmitted OUT Data Interrupt Enable
      TXOUTE         : Boolean;
      --  Read-only. Underflow Interrupt Enable
      UNDERFIE       : Boolean;
      --  Read-only. Pipe Error Interrupt Enable
      PERRE          : Boolean;
      --  Read-only. NAKed Interrupt Enable
      NAKEDE         : Boolean;
      --  Read-only. Overflow Interrupt Enable
      OVERFIE        : Boolean;
      --  Read-only. Received STALLed Interrupt Enable
      RXSTALLDE      : Boolean;
      --  Read-only. Short Packet Interrupt Enable
      SHORTPACKETIE  : Boolean;
      --  unspecified
      Reserved_8_11  : HAL.UInt4;
      --  Read-only. Number of Busy Banks Interrupt Enable
      NBUSYBKE       : Boolean;
      --  unspecified
      Reserved_13_13 : HAL.Bit;
      --  Read-only. FIFO Control
      FIFOCON        : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Pipe Interrupts Disable HDMA Request Enable
      PDISHDMA       : Boolean;
      --  Read-only. Pipe Freeze
      PFREEZE        : Boolean;
      --  Read-only. Reset Data Toggle
      RSTDT          : Boolean;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIMR_INTRPT_MODE_Register use record
      RXINE          at 0 range 0 .. 0;
      TXOUTE         at 0 range 1 .. 1;
      UNDERFIE       at 0 range 2 .. 2;
      PERRE          at 0 range 3 .. 3;
      NAKEDE         at 0 range 4 .. 4;
      OVERFIE        at 0 range 5 .. 5;
      RXSTALLDE      at 0 range 6 .. 6;
      SHORTPACKETIE  at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PDISHDMA       at 0 range 16 .. 16;
      PFREEZE        at 0 range 17 .. 17;
      RSTDT          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Host Pipe Mask Register
   type USBHS_HSTPIPIMR_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIMR_INTRPT_MODE_Register;

   --  Host Pipe Enable Register
   type USBHS_HSTPIPIER_CTRL_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Enable
      RXINES         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Enable
      TXOUTES        : Boolean := False;
      --  Write-only. Transmitted SETUP Interrupt Enable
      TXSTPES        : Boolean := False;
      --  Write-only. Pipe Error Interrupt Enable
      PERRES         : Boolean := False;
      --  Write-only. NAKed Interrupt Enable
      NAKEDES        : Boolean := False;
      --  Write-only. Overflow Interrupt Enable
      OVERFIES       : Boolean := False;
      --  Write-only. Received STALLed Interrupt Enable
      RXSTALLDES     : Boolean := False;
      --  Write-only. Short Packet Interrupt Enable
      SHORTPACKETIES : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Enable
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Write-only. Pipe Interrupts Disable HDMA Request Enable
      PDISHDMAS      : Boolean := False;
      --  Write-only. Pipe Freeze Enable
      PFREEZES       : Boolean := False;
      --  Write-only. Reset Data Toggle Enable
      RSTDTS         : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIER_CTRL_MODE_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      OVERFIES       at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      SHORTPACKETIES at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PDISHDMAS      at 0 range 16 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Host Pipe Enable Register
   type USBHS_HSTPIPIER_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIER_CTRL_MODE_Register;

   --  Host Pipe Enable Register
   type USBHS_HSTPIPIER_ISO_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Enable
      RXINES         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Enable
      TXOUTES        : Boolean := False;
      --  Write-only. Underflow Interrupt Enable
      UNDERFIES      : Boolean := False;
      --  Write-only. Pipe Error Interrupt Enable
      PERRES         : Boolean := False;
      --  Write-only. NAKed Interrupt Enable
      NAKEDES        : Boolean := False;
      --  Write-only. Overflow Interrupt Enable
      OVERFIES       : Boolean := False;
      --  Write-only. CRC Error Interrupt Enable
      CRCERRES       : Boolean := False;
      --  Write-only. Short Packet Interrupt Enable
      SHORTPACKETIES : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Enable
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Write-only. Pipe Interrupts Disable HDMA Request Enable
      PDISHDMAS      : Boolean := False;
      --  Write-only. Pipe Freeze Enable
      PFREEZES       : Boolean := False;
      --  Write-only. Reset Data Toggle Enable
      RSTDTS         : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIER_ISO_MODE_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      UNDERFIES      at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      OVERFIES       at 0 range 5 .. 5;
      CRCERRES       at 0 range 6 .. 6;
      SHORTPACKETIES at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PDISHDMAS      at 0 range 16 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Host Pipe Enable Register
   type USBHS_HSTPIPIER_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIER_ISO_MODE_Register;

   --  Host Pipe Enable Register
   type USBHS_HSTPIPIER_BLK_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Enable
      RXINES         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Enable
      TXOUTES        : Boolean := False;
      --  Write-only. Transmitted SETUP Interrupt Enable
      TXSTPES        : Boolean := False;
      --  Write-only. Pipe Error Interrupt Enable
      PERRES         : Boolean := False;
      --  Write-only. NAKed Interrupt Enable
      NAKEDES        : Boolean := False;
      --  Write-only. Overflow Interrupt Enable
      OVERFIES       : Boolean := False;
      --  Write-only. Received STALLed Interrupt Enable
      RXSTALLDES     : Boolean := False;
      --  Write-only. Short Packet Interrupt Enable
      SHORTPACKETIES : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Enable
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Write-only. Pipe Interrupts Disable HDMA Request Enable
      PDISHDMAS      : Boolean := False;
      --  Write-only. Pipe Freeze Enable
      PFREEZES       : Boolean := False;
      --  Write-only. Reset Data Toggle Enable
      RSTDTS         : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIER_BLK_MODE_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      OVERFIES       at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      SHORTPACKETIES at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PDISHDMAS      at 0 range 16 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Host Pipe Enable Register
   type USBHS_HSTPIPIER_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIER_BLK_MODE_Register;

   --  Host Pipe Enable Register
   type USBHS_HSTPIPIER_INTRPT_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Enable
      RXINES         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Enable
      TXOUTES        : Boolean := False;
      --  Write-only. Underflow Interrupt Enable
      UNDERFIES      : Boolean := False;
      --  Write-only. Pipe Error Interrupt Enable
      PERRES         : Boolean := False;
      --  Write-only. NAKed Interrupt Enable
      NAKEDES        : Boolean := False;
      --  Write-only. Overflow Interrupt Enable
      OVERFIES       : Boolean := False;
      --  Write-only. Received STALLed Interrupt Enable
      RXSTALLDES     : Boolean := False;
      --  Write-only. Short Packet Interrupt Enable
      SHORTPACKETIES : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Enable
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Write-only. Pipe Interrupts Disable HDMA Request Enable
      PDISHDMAS      : Boolean := False;
      --  Write-only. Pipe Freeze Enable
      PFREEZES       : Boolean := False;
      --  Write-only. Reset Data Toggle Enable
      RSTDTS         : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIER_INTRPT_MODE_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      UNDERFIES      at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      OVERFIES       at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      SHORTPACKETIES at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      PDISHDMAS      at 0 range 16 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Host Pipe Enable Register
   type USBHS_HSTPIPIER_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIER_INTRPT_MODE_Register;

   --  Host Pipe Disable Register
   type USBHS_HSTPIPIDR_CTRL_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Disable
      RXINEC         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Disable
      TXOUTEC        : Boolean := False;
      --  Write-only. Transmitted SETUP Interrupt Disable
      TXSTPEC        : Boolean := False;
      --  Write-only. Pipe Error Interrupt Disable
      PERREC         : Boolean := False;
      --  Write-only. NAKed Interrupt Disable
      NAKEDEC        : Boolean := False;
      --  Write-only. Overflow Interrupt Disable
      OVERFIEC       : Boolean := False;
      --  Write-only. Received STALLed Interrupt Disable
      RXSTALLDEC     : Boolean := False;
      --  Write-only. Short Packet Interrupt Disable
      SHORTPACKETIEC : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Disable
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFO Control Disable
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Pipe Interrupts Disable HDMA Request Disable
      PDISHDMAC      : Boolean := False;
      --  Write-only. Pipe Freeze Disable
      PFREEZEC       : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIDR_CTRL_MODE_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      OVERFIEC       at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      SHORTPACKETIEC at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PDISHDMAC      at 0 range 16 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Host Pipe Disable Register
   type USBHS_HSTPIPIDR_CTRL_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIDR_CTRL_MODE_Register;

   --  Host Pipe Disable Register
   type USBHS_HSTPIPIDR_ISO_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Disable
      RXINEC         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Disable
      TXOUTEC        : Boolean := False;
      --  Write-only. Underflow Interrupt Disable
      UNDERFIEC      : Boolean := False;
      --  Write-only. Pipe Error Interrupt Disable
      PERREC         : Boolean := False;
      --  Write-only. NAKed Interrupt Disable
      NAKEDEC        : Boolean := False;
      --  Write-only. Overflow Interrupt Disable
      OVERFIEC       : Boolean := False;
      --  Write-only. CRC Error Interrupt Disable
      CRCERREC       : Boolean := False;
      --  Write-only. Short Packet Interrupt Disable
      SHORTPACKETIEC : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Disable
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFO Control Disable
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Pipe Interrupts Disable HDMA Request Disable
      PDISHDMAC      : Boolean := False;
      --  Write-only. Pipe Freeze Disable
      PFREEZEC       : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIDR_ISO_MODE_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      UNDERFIEC      at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      OVERFIEC       at 0 range 5 .. 5;
      CRCERREC       at 0 range 6 .. 6;
      SHORTPACKETIEC at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PDISHDMAC      at 0 range 16 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Host Pipe Disable Register
   type USBHS_HSTPIPIDR_ISO_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIDR_ISO_MODE_Register;

   --  Host Pipe Disable Register
   type USBHS_HSTPIPIDR_BLK_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Disable
      RXINEC         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Disable
      TXOUTEC        : Boolean := False;
      --  Write-only. Transmitted SETUP Interrupt Disable
      TXSTPEC        : Boolean := False;
      --  Write-only. Pipe Error Interrupt Disable
      PERREC         : Boolean := False;
      --  Write-only. NAKed Interrupt Disable
      NAKEDEC        : Boolean := False;
      --  Write-only. Overflow Interrupt Disable
      OVERFIEC       : Boolean := False;
      --  Write-only. Received STALLed Interrupt Disable
      RXSTALLDEC     : Boolean := False;
      --  Write-only. Short Packet Interrupt Disable
      SHORTPACKETIEC : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Disable
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFO Control Disable
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Pipe Interrupts Disable HDMA Request Disable
      PDISHDMAC      : Boolean := False;
      --  Write-only. Pipe Freeze Disable
      PFREEZEC       : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIDR_BLK_MODE_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      OVERFIEC       at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      SHORTPACKETIEC at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PDISHDMAC      at 0 range 16 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Host Pipe Disable Register
   type USBHS_HSTPIPIDR_BLK_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIDR_BLK_MODE_Register;

   --  Host Pipe Disable Register
   type USBHS_HSTPIPIDR_INTRPT_MODE_Register is record
      --  Write-only. Received IN Data Interrupt Disable
      RXINEC         : Boolean := False;
      --  Write-only. Transmitted OUT Data Interrupt Disable
      TXOUTEC        : Boolean := False;
      --  Write-only. Underflow Interrupt Disable
      UNDERFIEC      : Boolean := False;
      --  Write-only. Pipe Error Interrupt Disable
      PERREC         : Boolean := False;
      --  Write-only. NAKed Interrupt Disable
      NAKEDEC        : Boolean := False;
      --  Write-only. Overflow Interrupt Disable
      OVERFIEC       : Boolean := False;
      --  Write-only. Received STALLed Interrupt Disable
      RXSTALLDEC     : Boolean := False;
      --  Write-only. Short Packet Interrupt Disable
      SHORTPACKETIEC : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Write-only. Number of Busy Banks Disable
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFO Control Disable
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Pipe Interrupts Disable HDMA Request Disable
      PDISHDMAC      : Boolean := False;
      --  Write-only. Pipe Freeze Disable
      PFREEZEC       : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPIDR_INTRPT_MODE_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      UNDERFIEC      at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      OVERFIEC       at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      SHORTPACKETIEC at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PDISHDMAC      at 0 range 16 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Host Pipe Disable Register
   type USBHS_HSTPIPIDR_INTRPT_MODE_Registers is array (0 .. 9)
     of USBHS_HSTPIPIDR_INTRPT_MODE_Register;

   subtype USBHS_HSTPIPINRQ_INRQ_Field is HAL.UInt8;

   --  Host Pipe IN Request Register
   type USBHS_HSTPIPINRQ_Register is record
      --  IN Request Number before Freeze
      INRQ          : USBHS_HSTPIPINRQ_INRQ_Field := 16#0#;
      --  IN Request Mode
      INMODE        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPINRQ_Register use record
      INRQ          at 0 range 0 .. 7;
      INMODE        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Host Pipe IN Request Register
   type USBHS_HSTPIPINRQ_Registers is array (0 .. 9)
     of USBHS_HSTPIPINRQ_Register;

   subtype USBHS_HSTPIPERR_COUNTER_Field is HAL.UInt2;

   --  Host Pipe Error Register
   type USBHS_HSTPIPERR_Register is record
      --  Data Toggle Error
      DATATGL       : Boolean := False;
      --  Data PID Error
      DATAPID       : Boolean := False;
      --  Data PID Error
      PID           : Boolean := False;
      --  Time-Out Error
      TIMEOUT       : Boolean := False;
      --  CRC16 Error
      CRC16         : Boolean := False;
      --  Error Counter
      COUNTER       : USBHS_HSTPIPERR_COUNTER_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTPIPERR_Register use record
      DATATGL       at 0 range 0 .. 0;
      DATAPID       at 0 range 1 .. 1;
      PID           at 0 range 2 .. 2;
      TIMEOUT       at 0 range 3 .. 3;
      CRC16         at 0 range 4 .. 4;
      COUNTER       at 0 range 5 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Host Pipe Error Register
   type USBHS_HSTPIPERR_Registers is array (0 .. 9)
     of USBHS_HSTPIPERR_Register;

   --------------------------------------------
   -- USBHS_USBHS_HSTDMA cluster's Registers --
   --------------------------------------------

   subtype USBHS_HSTDMACONTROL_USBHS_USBHS_HSTDMA_BUFF_LENGTH_Field is
     HAL.UInt16;

   --  Host DMA Channel Control Register
   type USBHS_HSTDMACONTROL_USBHS_USBHS_HSTDMA_Register is record
      --  Channel Enable Command
      CHANN_ENB     : Boolean := False;
      --  Load Next Channel Transfer Descriptor Enable Command
      LDNXT_DSC     : Boolean := False;
      --  End of Transfer Enable Control (OUT transfers only)
      END_TR_EN     : Boolean := False;
      --  End of Buffer Enable Control
      END_B_EN      : Boolean := False;
      --  End of Transfer Interrupt Enable
      END_TR_IT     : Boolean := False;
      --  End of Buffer Interrupt Enable
      END_BUFFIT    : Boolean := False;
      --  Descriptor Loaded Interrupt Enable
      DESC_LD_IT    : Boolean := False;
      --  Burst Lock Enable
      BURST_LCK     : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
      --  Buffer Byte Length (Write-only)
      BUFF_LENGTH   : USBHS_HSTDMACONTROL_USBHS_USBHS_HSTDMA_BUFF_LENGTH_Field :=
                       16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTDMACONTROL_USBHS_USBHS_HSTDMA_Register use record
      CHANN_ENB     at 0 range 0 .. 0;
      LDNXT_DSC     at 0 range 1 .. 1;
      END_TR_EN     at 0 range 2 .. 2;
      END_B_EN      at 0 range 3 .. 3;
      END_TR_IT     at 0 range 4 .. 4;
      END_BUFFIT    at 0 range 5 .. 5;
      DESC_LD_IT    at 0 range 6 .. 6;
      BURST_LCK     at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      BUFF_LENGTH   at 0 range 16 .. 31;
   end record;

   subtype USBHS_HSTDMASTATUS_USBHS_USBHS_HSTDMA_BUFF_COUNT_Field is
     HAL.UInt16;

   --  Host DMA Channel Status Register
   type USBHS_HSTDMASTATUS_USBHS_USBHS_HSTDMA_Register is record
      --  Channel Enable Status
      CHANN_ENB     : Boolean := False;
      --  Channel Active Status
      CHANN_ACT     : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  End of Channel Transfer Status
      END_TR_ST     : Boolean := False;
      --  End of Channel Buffer Status
      END_BF_ST     : Boolean := False;
      --  Descriptor Loaded Status
      DESC_LDST     : Boolean := False;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
      --  Buffer Byte Count
      BUFF_COUNT    : USBHS_HSTDMASTATUS_USBHS_USBHS_HSTDMA_BUFF_COUNT_Field :=
                       16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HSTDMASTATUS_USBHS_USBHS_HSTDMA_Register use record
      CHANN_ENB     at 0 range 0 .. 0;
      CHANN_ACT     at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      END_TR_ST     at 0 range 4 .. 4;
      END_BF_ST     at 0 range 5 .. 5;
      DESC_LDST     at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
      BUFF_COUNT    at 0 range 16 .. 31;
   end record;

   --  Host DMA Channel Next Descriptor Address Register
   type USBHS_USBHS_HSTDMA_Cluster is record
      --  Host DMA Channel Next Descriptor Address Register
      HSTDMANXTDSC  : aliased HAL.UInt32;
      --  Host DMA Channel Address Register
      HSTDMAADDRESS : aliased HAL.UInt32;
      --  Host DMA Channel Control Register
      HSTDMACONTROL : aliased USBHS_HSTDMACONTROL_USBHS_USBHS_HSTDMA_Register;
      --  Host DMA Channel Status Register
      HSTDMASTATUS  : aliased USBHS_HSTDMASTATUS_USBHS_USBHS_HSTDMA_Register;
   end record
     with Size => 128;

   for USBHS_USBHS_HSTDMA_Cluster use record
      HSTDMANXTDSC  at 16#0# range 0 .. 31;
      HSTDMAADDRESS at 16#4# range 0 .. 31;
      HSTDMACONTROL at 16#8# range 0 .. 31;
      HSTDMASTATUS  at 16#C# range 0 .. 31;
   end record;

   --  Host DMA Channel Next Descriptor Address Register
   type USBHS_USBHS_HSTDMA_Clusters is array (0 .. 6)
     of USBHS_USBHS_HSTDMA_Cluster;

   --  USBHS Mode
   type CTRL_UIMODSelect is
     (--  The module is in USB Host mode.
      HOST,
      --  The module is in USB Device mode.
      DEVICE)
     with Size => 1;
   for CTRL_UIMODSelect use
     (HOST => 0,
      DEVICE => 1);

   --  General Control Register
   type USBHS_CTRL_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Remote Device Connection Error Interrupt Enable
      RDERRE         : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  VBUS Hardware Control
      VBUSHWC        : Boolean := False;
      --  unspecified
      Reserved_9_13  : HAL.UInt5 := 16#0#;
      --  Freeze USB Clock
      FRZCLK         : Boolean := False;
      --  USBHS Enable
      USBE           : Boolean := False;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  UID Pin Enable
      UID            : Boolean := False;
      --  USBHS Mode
      UIMOD          : CTRL_UIMODSelect := SAM_SVD.USBHS.HOST;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_CTRL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RDERRE         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      VBUSHWC        at 0 range 8 .. 8;
      Reserved_9_13  at 0 range 9 .. 13;
      FRZCLK         at 0 range 14 .. 14;
      USBE           at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      UID            at 0 range 24 .. 24;
      UIMOD          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Speed Status (Device mode only)
   type SR_SPEEDSelect is
     (--  Full-Speed mode
      FULL_SPEED,
      --  High-Speed mode
      HIGH_SPEED,
      --  Low-Speed mode
      LOW_SPEED)
     with Size => 2;
   for SR_SPEEDSelect use
     (FULL_SPEED => 0,
      HIGH_SPEED => 1,
      LOW_SPEED => 2);

   --  General Status Register
   type USBHS_SR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4;
      --  Read-only. Remote Device Connection Error Interrupt (Host mode only)
      RDERRI         : Boolean;
      --  unspecified
      Reserved_5_11  : HAL.UInt7;
      --  Read-only. Speed Status (Device mode only)
      SPEED          : SR_SPEEDSelect;
      --  Read-only. UTMI Clock Usable
      CLKUSABLE      : Boolean;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_SR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RDERRI         at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      SPEED          at 0 range 12 .. 13;
      CLKUSABLE      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  General Status Clear Register
   type USBHS_SCR_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#0#;
      --  Write-only. Remote Device Connection Error Interrupt Clear
      RDERRIC       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_SCR_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      RDERRIC       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  General Status Set Register
   type USBHS_SFR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Write-only. Remote Device Connection Error Interrupt Set
      RDERRIS        : Boolean := False;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  Write-only. VBUS Request Set
      VBUSRQS        : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_SFR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RDERRIS        at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      VBUSRQS        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type USBHS_Disc is
     (CTRL_MODE,
      ISO_MODE,
      BLK_MODE,
      INTRPT_MODE,
      Default,
      CTRL_BULK_MODE);

   --  USB High-Speed Interface
   type USBHS_Peripheral
     (Discriminent : USBHS_Disc := CTRL_MODE)
   is record
      --  Device General Control Register
      DEVCTRL                  : aliased USBHS_DEVCTRL_Register;
      --  Device Global Interrupt Status Register
      DEVISR                   : aliased USBHS_DEVISR_Register;
      --  Device Global Interrupt Clear Register
      DEVICR                   : aliased USBHS_DEVICR_Register;
      --  Device Global Interrupt Set Register
      DEVIFR                   : aliased USBHS_DEVIFR_Register;
      --  Device Global Interrupt Mask Register
      DEVIMR                   : aliased USBHS_DEVIMR_Register;
      --  Device Global Interrupt Disable Register
      DEVIDR                   : aliased USBHS_DEVIDR_Register;
      --  Device Global Interrupt Enable Register
      DEVIER                   : aliased USBHS_DEVIER_Register;
      --  Device Endpoint Register
      DEVEPT                   : aliased USBHS_DEVEPT_Register;
      --  Device Frame Number Register
      DEVFNUM                  : aliased USBHS_DEVFNUM_Register;
      --  Device Endpoint Configuration Register
      DEVEPTCFG                : aliased USBHS_DEVEPTCFG_Registers;
      --  Device DMA Channel Next Descriptor Address Register
      USBHS_USBHS_DEVDMA       : aliased USBHS_USBHS_DEVDMA_Clusters;
      --  Host General Control Register
      HSTCTRL                  : aliased USBHS_HSTCTRL_Register;
      --  Host Global Interrupt Status Register
      HSTISR                   : aliased USBHS_HSTISR_Register;
      --  Host Global Interrupt Clear Register
      HSTICR                   : aliased USBHS_HSTICR_Register;
      --  Host Global Interrupt Set Register
      HSTIFR                   : aliased USBHS_HSTIFR_Register;
      --  Host Global Interrupt Mask Register
      HSTIMR                   : aliased USBHS_HSTIMR_Register;
      --  Host Global Interrupt Disable Register
      HSTIDR                   : aliased USBHS_HSTIDR_Register;
      --  Host Global Interrupt Enable Register
      HSTIER                   : aliased USBHS_HSTIER_Register;
      --  Host Pipe Register
      HSTPIP                   : aliased USBHS_HSTPIP_Register;
      --  Host Frame Number Register
      HSTFNUM                  : aliased USBHS_HSTFNUM_Register;
      --  Host Address 1 Register
      HSTADDR1                 : aliased USBHS_HSTADDR1_Register;
      --  Host Address 2 Register
      HSTADDR2                 : aliased USBHS_HSTADDR2_Register;
      --  Host Address 3 Register
      HSTADDR3                 : aliased USBHS_HSTADDR3_Register;
      --  Host Pipe IN Request Register
      HSTPIPINRQ               : aliased USBHS_HSTPIPINRQ_Registers;
      --  Host Pipe Error Register
      HSTPIPERR                : aliased USBHS_HSTPIPERR_Registers;
      --  Host DMA Channel Next Descriptor Address Register
      USBHS_USBHS_HSTDMA       : aliased USBHS_USBHS_HSTDMA_Clusters;
      --  General Control Register
      CTRL                     : aliased USBHS_CTRL_Register;
      --  General Status Register
      SR                       : aliased USBHS_SR_Register;
      --  General Status Clear Register
      SCR                      : aliased USBHS_SCR_Register;
      --  General Status Set Register
      SFR                      : aliased USBHS_SFR_Register;
      case Discriminent is
         when CTRL_MODE =>
            --  Device Endpoint Interrupt Status Register
            DEVEPTISR_CTRL_MODE : aliased USBHS_DEVEPTISR_CTRL_MODE_Registers;
            --  Device Endpoint Interrupt Clear Register
            DEVEPTICR_CTRL_MODE : aliased USBHS_DEVEPTICR_CTRL_MODE_Registers;
            --  Device Endpoint Interrupt Set Register
            DEVEPTIFR_CTRL_MODE : aliased USBHS_DEVEPTIFR_CTRL_MODE_Registers;
            --  Device Endpoint Interrupt Mask Register
            DEVEPTIMR_CTRL_MODE : aliased USBHS_DEVEPTIMR_CTRL_MODE_Registers;
            --  Device Endpoint Interrupt Enable Register
            DEVEPTIER_CTRL_MODE : aliased USBHS_DEVEPTIER_CTRL_MODE_Registers;
            --  Device Endpoint Interrupt Disable Register
            DEVEPTIDR_CTRL_MODE : aliased USBHS_DEVEPTIDR_CTRL_MODE_Registers;
            --  Host Pipe Status Register
            HSTPIPISR_CTRL_MODE : aliased USBHS_HSTPIPISR_CTRL_MODE_Registers;
            --  Host Pipe Clear Register
            HSTPIPICR_CTRL_MODE : aliased USBHS_HSTPIPICR_CTRL_MODE_Registers;
            --  Host Pipe Set Register
            HSTPIPIFR_CTRL_MODE : aliased USBHS_HSTPIPIFR_CTRL_MODE_Registers;
            --  Host Pipe Mask Register
            HSTPIPIMR_CTRL_MODE : aliased USBHS_HSTPIPIMR_CTRL_MODE_Registers;
            --  Host Pipe Enable Register
            HSTPIPIER_CTRL_MODE : aliased USBHS_HSTPIPIER_CTRL_MODE_Registers;
            --  Host Pipe Disable Register
            HSTPIPIDR_CTRL_MODE : aliased USBHS_HSTPIPIDR_CTRL_MODE_Registers;
         when ISO_MODE =>
            --  Device Endpoint Interrupt Status Register
            DEVEPTISR_ISO_MODE : aliased USBHS_DEVEPTISR_ISO_MODE_Registers;
            --  Device Endpoint Interrupt Clear Register
            DEVEPTICR_ISO_MODE : aliased USBHS_DEVEPTICR_ISO_MODE_Registers;
            --  Device Endpoint Interrupt Set Register
            DEVEPTIFR_ISO_MODE : aliased USBHS_DEVEPTIFR_ISO_MODE_Registers;
            --  Device Endpoint Interrupt Mask Register
            DEVEPTIMR_ISO_MODE : aliased USBHS_DEVEPTIMR_ISO_MODE_Registers;
            --  Device Endpoint Interrupt Enable Register
            DEVEPTIER_ISO_MODE : aliased USBHS_DEVEPTIER_ISO_MODE_Registers;
            --  Device Endpoint Interrupt Disable Register
            DEVEPTIDR_ISO_MODE : aliased USBHS_DEVEPTIDR_ISO_MODE_Registers;
            --  Host Pipe Status Register
            HSTPIPISR_ISO_MODE : aliased USBHS_HSTPIPISR_ISO_MODE_Registers;
            --  Host Pipe Clear Register
            HSTPIPICR_ISO_MODE : aliased USBHS_HSTPIPICR_ISO_MODE_Registers;
            --  Host Pipe Set Register
            HSTPIPIFR_ISO_MODE : aliased USBHS_HSTPIPIFR_ISO_MODE_Registers;
            --  Host Pipe Mask Register
            HSTPIPIMR_ISO_MODE : aliased USBHS_HSTPIPIMR_ISO_MODE_Registers;
            --  Host Pipe Enable Register
            HSTPIPIER_ISO_MODE : aliased USBHS_HSTPIPIER_ISO_MODE_Registers;
            --  Host Pipe Disable Register
            HSTPIPIDR_ISO_MODE : aliased USBHS_HSTPIPIDR_ISO_MODE_Registers;
         when BLK_MODE =>
            --  Device Endpoint Interrupt Status Register
            DEVEPTISR_BLK_MODE : aliased USBHS_DEVEPTISR_BLK_MODE_Registers;
            --  Device Endpoint Interrupt Clear Register
            DEVEPTICR_BLK_MODE : aliased USBHS_DEVEPTICR_BLK_MODE_Registers;
            --  Device Endpoint Interrupt Set Register
            DEVEPTIFR_BLK_MODE : aliased USBHS_DEVEPTIFR_BLK_MODE_Registers;
            --  Device Endpoint Interrupt Mask Register
            DEVEPTIMR_BLK_MODE : aliased USBHS_DEVEPTIMR_BLK_MODE_Registers;
            --  Device Endpoint Interrupt Enable Register
            DEVEPTIER_BLK_MODE : aliased USBHS_DEVEPTIER_BLK_MODE_Registers;
            --  Device Endpoint Interrupt Disable Register
            DEVEPTIDR_BLK_MODE : aliased USBHS_DEVEPTIDR_BLK_MODE_Registers;
            --  Host Pipe Status Register
            HSTPIPISR_BLK_MODE : aliased USBHS_HSTPIPISR_BLK_MODE_Registers;
            --  Host Pipe Clear Register
            HSTPIPICR_BLK_MODE : aliased USBHS_HSTPIPICR_BLK_MODE_Registers;
            --  Host Pipe Set Register
            HSTPIPIFR_BLK_MODE : aliased USBHS_HSTPIPIFR_BLK_MODE_Registers;
            --  Host Pipe Mask Register
            HSTPIPIMR_BLK_MODE : aliased USBHS_HSTPIPIMR_BLK_MODE_Registers;
            --  Host Pipe Enable Register
            HSTPIPIER_BLK_MODE : aliased USBHS_HSTPIPIER_BLK_MODE_Registers;
            --  Host Pipe Disable Register
            HSTPIPIDR_BLK_MODE : aliased USBHS_HSTPIPIDR_BLK_MODE_Registers;
         when INTRPT_MODE =>
            --  Device Endpoint Interrupt Status Register
            DEVEPTISR_INTRPT_MODE : aliased USBHS_DEVEPTISR_INTRPT_MODE_Registers;
            --  Device Endpoint Interrupt Clear Register
            DEVEPTICR_INTRPT_MODE : aliased USBHS_DEVEPTICR_INTRPT_MODE_Registers;
            --  Device Endpoint Interrupt Set Register
            DEVEPTIFR_INTRPT_MODE : aliased USBHS_DEVEPTIFR_INTRPT_MODE_Registers;
            --  Device Endpoint Interrupt Mask Register
            DEVEPTIMR_INTRPT_MODE : aliased USBHS_DEVEPTIMR_INTRPT_MODE_Registers;
            --  Device Endpoint Interrupt Enable Register
            DEVEPTIER_INTRPT_MODE : aliased USBHS_DEVEPTIER_INTRPT_MODE_Registers;
            --  Device Endpoint Interrupt Disable Register
            DEVEPTIDR_INTRPT_MODE : aliased USBHS_DEVEPTIDR_INTRPT_MODE_Registers;
            --  Host Pipe Status Register
            HSTPIPISR_INTRPT_MODE : aliased USBHS_HSTPIPISR_INTRPT_MODE_Registers;
            --  Host Pipe Clear Register
            HSTPIPICR_INTRPT_MODE : aliased USBHS_HSTPIPICR_INTRPT_MODE_Registers;
            --  Host Pipe Set Register
            HSTPIPIFR_INTRPT_MODE : aliased USBHS_HSTPIPIFR_INTRPT_MODE_Registers;
            --  Host Pipe Mask Register
            HSTPIPIMR_INTRPT_MODE : aliased USBHS_HSTPIPIMR_INTRPT_MODE_Registers;
            --  Host Pipe Enable Register
            HSTPIPIER_INTRPT_MODE : aliased USBHS_HSTPIPIER_INTRPT_MODE_Registers;
            --  Host Pipe Disable Register
            HSTPIPIDR_INTRPT_MODE : aliased USBHS_HSTPIPIDR_INTRPT_MODE_Registers;
         when Default =>
            --  Host Pipe Configuration Register
            HSTPIPCFG : aliased USBHS_HSTPIPCFG_Registers;
         when CTRL_BULK_MODE =>
            --  Host Pipe Configuration Register
            HSTPIPCFG_CTRL_BULK_MODE : aliased USBHS_HSTPIPCFG_CTRL_BULK_MODE_Registers;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USBHS_Peripheral use record
      DEVCTRL                  at 16#0# range 0 .. 31;
      DEVISR                   at 16#4# range 0 .. 31;
      DEVICR                   at 16#8# range 0 .. 31;
      DEVIFR                   at 16#C# range 0 .. 31;
      DEVIMR                   at 16#10# range 0 .. 31;
      DEVIDR                   at 16#14# range 0 .. 31;
      DEVIER                   at 16#18# range 0 .. 31;
      DEVEPT                   at 16#1C# range 0 .. 31;
      DEVFNUM                  at 16#20# range 0 .. 31;
      DEVEPTCFG                at 16#100# range 0 .. 319;
      USBHS_USBHS_DEVDMA       at 16#310# range 0 .. 895;
      HSTCTRL                  at 16#400# range 0 .. 31;
      HSTISR                   at 16#404# range 0 .. 31;
      HSTICR                   at 16#408# range 0 .. 31;
      HSTIFR                   at 16#40C# range 0 .. 31;
      HSTIMR                   at 16#410# range 0 .. 31;
      HSTIDR                   at 16#414# range 0 .. 31;
      HSTIER                   at 16#418# range 0 .. 31;
      HSTPIP                   at 16#41C# range 0 .. 31;
      HSTFNUM                  at 16#420# range 0 .. 31;
      HSTADDR1                 at 16#424# range 0 .. 31;
      HSTADDR2                 at 16#428# range 0 .. 31;
      HSTADDR3                 at 16#42C# range 0 .. 31;
      HSTPIPINRQ               at 16#650# range 0 .. 319;
      HSTPIPERR                at 16#680# range 0 .. 319;
      USBHS_USBHS_HSTDMA       at 16#710# range 0 .. 895;
      CTRL                     at 16#800# range 0 .. 31;
      SR                       at 16#804# range 0 .. 31;
      SCR                      at 16#808# range 0 .. 31;
      SFR                      at 16#80C# range 0 .. 31;
      DEVEPTISR_CTRL_MODE      at 16#130# range 0 .. 319;
      DEVEPTICR_CTRL_MODE      at 16#160# range 0 .. 319;
      DEVEPTIFR_CTRL_MODE      at 16#190# range 0 .. 319;
      DEVEPTIMR_CTRL_MODE      at 16#1C0# range 0 .. 319;
      DEVEPTIER_CTRL_MODE      at 16#1F0# range 0 .. 319;
      DEVEPTIDR_CTRL_MODE      at 16#220# range 0 .. 319;
      HSTPIPISR_CTRL_MODE      at 16#530# range 0 .. 319;
      HSTPIPICR_CTRL_MODE      at 16#560# range 0 .. 319;
      HSTPIPIFR_CTRL_MODE      at 16#590# range 0 .. 319;
      HSTPIPIMR_CTRL_MODE      at 16#5C0# range 0 .. 319;
      HSTPIPIER_CTRL_MODE      at 16#5F0# range 0 .. 319;
      HSTPIPIDR_CTRL_MODE      at 16#620# range 0 .. 319;
      DEVEPTISR_ISO_MODE       at 16#130# range 0 .. 319;
      DEVEPTICR_ISO_MODE       at 16#160# range 0 .. 319;
      DEVEPTIFR_ISO_MODE       at 16#190# range 0 .. 319;
      DEVEPTIMR_ISO_MODE       at 16#1C0# range 0 .. 319;
      DEVEPTIER_ISO_MODE       at 16#1F0# range 0 .. 319;
      DEVEPTIDR_ISO_MODE       at 16#220# range 0 .. 319;
      HSTPIPISR_ISO_MODE       at 16#530# range 0 .. 319;
      HSTPIPICR_ISO_MODE       at 16#560# range 0 .. 319;
      HSTPIPIFR_ISO_MODE       at 16#590# range 0 .. 319;
      HSTPIPIMR_ISO_MODE       at 16#5C0# range 0 .. 319;
      HSTPIPIER_ISO_MODE       at 16#5F0# range 0 .. 319;
      HSTPIPIDR_ISO_MODE       at 16#620# range 0 .. 319;
      DEVEPTISR_BLK_MODE       at 16#130# range 0 .. 319;
      DEVEPTICR_BLK_MODE       at 16#160# range 0 .. 319;
      DEVEPTIFR_BLK_MODE       at 16#190# range 0 .. 319;
      DEVEPTIMR_BLK_MODE       at 16#1C0# range 0 .. 319;
      DEVEPTIER_BLK_MODE       at 16#1F0# range 0 .. 319;
      DEVEPTIDR_BLK_MODE       at 16#220# range 0 .. 319;
      HSTPIPISR_BLK_MODE       at 16#530# range 0 .. 319;
      HSTPIPICR_BLK_MODE       at 16#560# range 0 .. 319;
      HSTPIPIFR_BLK_MODE       at 16#590# range 0 .. 319;
      HSTPIPIMR_BLK_MODE       at 16#5C0# range 0 .. 319;
      HSTPIPIER_BLK_MODE       at 16#5F0# range 0 .. 319;
      HSTPIPIDR_BLK_MODE       at 16#620# range 0 .. 319;
      DEVEPTISR_INTRPT_MODE    at 16#130# range 0 .. 319;
      DEVEPTICR_INTRPT_MODE    at 16#160# range 0 .. 319;
      DEVEPTIFR_INTRPT_MODE    at 16#190# range 0 .. 319;
      DEVEPTIMR_INTRPT_MODE    at 16#1C0# range 0 .. 319;
      DEVEPTIER_INTRPT_MODE    at 16#1F0# range 0 .. 319;
      DEVEPTIDR_INTRPT_MODE    at 16#220# range 0 .. 319;
      HSTPIPISR_INTRPT_MODE    at 16#530# range 0 .. 319;
      HSTPIPICR_INTRPT_MODE    at 16#560# range 0 .. 319;
      HSTPIPIFR_INTRPT_MODE    at 16#590# range 0 .. 319;
      HSTPIPIMR_INTRPT_MODE    at 16#5C0# range 0 .. 319;
      HSTPIPIER_INTRPT_MODE    at 16#5F0# range 0 .. 319;
      HSTPIPIDR_INTRPT_MODE    at 16#620# range 0 .. 319;
      HSTPIPCFG                at 16#500# range 0 .. 319;
      HSTPIPCFG_CTRL_BULK_MODE at 16#500# range 0 .. 319;
   end record;

   --  USB High-Speed Interface
   USBHS_Periph : aliased USBHS_Peripheral
     with Import, Address => USBHS_Base;

end SAM_SVD.USBHS;
