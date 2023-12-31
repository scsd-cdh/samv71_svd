pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21B.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.XDMAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype XDMAC_GTYPE_NB_CH_Field is HAL.UInt5;
   subtype XDMAC_GTYPE_FIFO_SZ_Field is HAL.UInt11;
   subtype XDMAC_GTYPE_NB_REQ_Field is HAL.UInt7;

   --  Global Type Register
   type XDMAC_GTYPE_Register is record
      --  Read-only. Number of Channels Minus One
      NB_CH          : XDMAC_GTYPE_NB_CH_Field;
      --  Read-only. Number of Bytes
      FIFO_SZ        : XDMAC_GTYPE_FIFO_SZ_Field;
      --  Read-only. Number of Peripheral Requests Minus One
      NB_REQ         : XDMAC_GTYPE_NB_REQ_Field;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GTYPE_Register use record
      NB_CH          at 0 range 0 .. 4;
      FIFO_SZ        at 0 range 5 .. 15;
      NB_REQ         at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Global Configuration Register
   type XDMAC_GCFG_Register is record
      --  Configuration Registers Clock Gating Disable
      CGDISREG      : Boolean := False;
      --  Pipeline Clock Gating Disable
      CGDISPIPE     : Boolean := False;
      --  FIFO Clock Gating Disable
      CGDISFIFO     : Boolean := False;
      --  Bus Interface Clock Gating Disable
      CGDISIF       : Boolean := False;
      --  unspecified
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  Boundary X Kilobyte Enable
      BXKBEN        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GCFG_Register use record
      CGDISREG      at 0 range 0 .. 0;
      CGDISPIPE     at 0 range 1 .. 1;
      CGDISFIFO     at 0 range 2 .. 2;
      CGDISIF       at 0 range 3 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      BXKBEN        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  XDMAC_GWAC_PW array element
   subtype XDMAC_GWAC_PW_Element is HAL.UInt4;

   --  XDMAC_GWAC_PW array
   type XDMAC_GWAC_PW_Field_Array is array (0 .. 3) of XDMAC_GWAC_PW_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for XDMAC_GWAC_PW
   type XDMAC_GWAC_PW_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PW as a value
            Val : HAL.UInt16;
         when True =>
            --  PW as an array
            Arr : XDMAC_GWAC_PW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for XDMAC_GWAC_PW_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Global Weighted Arbiter Configuration Register
   type XDMAC_GWAC_Register is record
      --  Pool Weight 0
      PW             : XDMAC_GWAC_PW_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GWAC_Register use record
      PW             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  XDMAC_GIE_IE array
   type XDMAC_GIE_IE_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GIE_IE
   type XDMAC_GIE_IE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IE as a value
            Val : HAL.UInt24;
         when True =>
            --  IE as an array
            Arr : XDMAC_GIE_IE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GIE_IE_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Interrupt Enable Register
   type XDMAC_GIE_Register is record
      --  Write-only. XDMAC Channel 0 Interrupt Enable Bit
      IE             : XDMAC_GIE_IE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GIE_Register use record
      IE             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GID_ID array
   type XDMAC_GID_ID_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GID_ID
   type XDMAC_GID_ID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ID as a value
            Val : HAL.UInt24;
         when True =>
            --  ID as an array
            Arr : XDMAC_GID_ID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GID_ID_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Interrupt Disable Register
   type XDMAC_GID_Register is record
      --  Write-only. XDMAC Channel 0 Interrupt Disable Bit
      ID             : XDMAC_GID_ID_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GID_Register use record
      ID             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GIM_IM array
   type XDMAC_GIM_IM_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GIM_IM
   type XDMAC_GIM_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt24;
         when True =>
            --  IM as an array
            Arr : XDMAC_GIM_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GIM_IM_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Interrupt Mask Register
   type XDMAC_GIM_Register is record
      --  Read-only. XDMAC Channel 0 Interrupt Mask Bit
      IM             : XDMAC_GIM_IM_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GIM_Register use record
      IM             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GIS_IS array
   type XDMAC_GIS_IS_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GIS_IS
   type XDMAC_GIS_IS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IS as a value
            Val : HAL.UInt24;
         when True =>
            --  IS as an array
            Arr : XDMAC_GIS_IS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GIS_IS_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Interrupt Status Register
   type XDMAC_GIS_Register is record
      --  Read-only. XDMAC Channel 0 Interrupt Status Bit
      IS_k           : XDMAC_GIS_IS_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GIS_Register use record
      IS_k           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GE_EN array
   type XDMAC_GE_EN_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GE_EN
   type XDMAC_GE_EN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EN as a value
            Val : HAL.UInt24;
         when True =>
            --  EN as an array
            Arr : XDMAC_GE_EN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GE_EN_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Enable Register
   type XDMAC_GE_Register is record
      --  Write-only. XDMAC Channel 0 Enable Bit
      EN             : XDMAC_GE_EN_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GE_Register use record
      EN             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GD_DI array
   type XDMAC_GD_DI_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GD_DI
   type XDMAC_GD_DI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DI as a value
            Val : HAL.UInt24;
         when True =>
            --  DI as an array
            Arr : XDMAC_GD_DI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GD_DI_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Disable Register
   type XDMAC_GD_Register is record
      --  Write-only. XDMAC Channel 0 Disable Bit
      DI             : XDMAC_GD_DI_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GD_Register use record
      DI             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GS_ST array
   type XDMAC_GS_ST_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GS_ST
   type XDMAC_GS_ST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ST as a value
            Val : HAL.UInt24;
         when True =>
            --  ST as an array
            Arr : XDMAC_GS_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GS_ST_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Status Register
   type XDMAC_GS_Register is record
      --  Read-only. XDMAC Channel 0 Status Bit
      ST             : XDMAC_GS_ST_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GS_Register use record
      ST             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GRS_RS array
   type XDMAC_GRS_RS_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GRS_RS
   type XDMAC_GRS_RS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RS as a value
            Val : HAL.UInt24;
         when True =>
            --  RS as an array
            Arr : XDMAC_GRS_RS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GRS_RS_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Read Suspend Register
   type XDMAC_GRS_Register is record
      --  XDMAC Channel 0 Read Suspend Bit
      RS             : XDMAC_GRS_RS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GRS_Register use record
      RS             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GWS_WS array
   type XDMAC_GWS_WS_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GWS_WS
   type XDMAC_GWS_WS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WS as a value
            Val : HAL.UInt24;
         when True =>
            --  WS as an array
            Arr : XDMAC_GWS_WS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GWS_WS_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Write Suspend Register
   type XDMAC_GWS_Register is record
      --  XDMAC Channel 0 Write Suspend Bit
      WS             : XDMAC_GWS_WS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GWS_Register use record
      WS             at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GRWS_RWS array
   type XDMAC_GRWS_RWS_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GRWS_RWS
   type XDMAC_GRWS_RWS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RWS as a value
            Val : HAL.UInt24;
         when True =>
            --  RWS as an array
            Arr : XDMAC_GRWS_RWS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GRWS_RWS_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Read Write Suspend Register
   type XDMAC_GRWS_Register is record
      --  Write-only. XDMAC Channel 0 Read Write Suspend Bit
      RWS            : XDMAC_GRWS_RWS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GRWS_Register use record
      RWS            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GRWR_RWR array
   type XDMAC_GRWR_RWR_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GRWR_RWR
   type XDMAC_GRWR_RWR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RWR as a value
            Val : HAL.UInt24;
         when True =>
            --  RWR as an array
            Arr : XDMAC_GRWR_RWR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GRWR_RWR_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Read Write Resume Register
   type XDMAC_GRWR_Register is record
      --  Write-only. XDMAC Channel 0 Read Write Resume Bit
      RWR            : XDMAC_GRWR_RWR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GRWR_Register use record
      RWR            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GSWR_SWREQ array
   type XDMAC_GSWR_SWREQ_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GSWR_SWREQ
   type XDMAC_GSWR_SWREQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWREQ as a value
            Val : HAL.UInt24;
         when True =>
            --  SWREQ as an array
            Arr : XDMAC_GSWR_SWREQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GSWR_SWREQ_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Software Request Register
   type XDMAC_GSWR_Register is record
      --  Write-only. XDMAC Channel 0 Software Request Bit
      SWREQ          : XDMAC_GSWR_SWREQ_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GSWR_Register use record
      SWREQ          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GSWS_SWRS array
   type XDMAC_GSWS_SWRS_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GSWS_SWRS
   type XDMAC_GSWS_SWRS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWRS as a value
            Val : HAL.UInt24;
         when True =>
            --  SWRS as an array
            Arr : XDMAC_GSWS_SWRS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GSWS_SWRS_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Software Request Status Register
   type XDMAC_GSWS_Register is record
      --  Read-only. XDMAC Channel 0 Software Request Status Bit
      SWRS           : XDMAC_GSWS_SWRS_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GSWS_Register use record
      SWRS           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  XDMAC_GSWF_SWF array
   type XDMAC_GSWF_SWF_Field_Array is array (0 .. 23) of Boolean
     with Component_Size => 1, Size => 24;

   --  Type definition for XDMAC_GSWF_SWF
   type XDMAC_GSWF_SWF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWF as a value
            Val : HAL.UInt24;
         when True =>
            --  SWF as an array
            Arr : XDMAC_GSWF_SWF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for XDMAC_GSWF_SWF_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Global Channel Software Flush Request Register
   type XDMAC_GSWF_Register is record
      --  Write-only. XDMAC Channel 0 Software Flush Request Bit
      SWF            : XDMAC_GSWF_SWF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_GSWF_Register use record
      SWF            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   ------------------------------------------
   -- XDMAC_XDMAC_CHID cluster's Registers --
   ------------------------------------------

   --  Channel Interrupt Enable Register
   type XDMAC_CIE_XDMAC_XDMAC_CHID_Register is record
      --  Write-only. End of Block Interrupt Enable Bit
      BIE           : Boolean := False;
      --  Write-only. End of Linked List Interrupt Enable Bit
      LIE           : Boolean := False;
      --  Write-only. End of Disable Interrupt Enable Bit
      DIE           : Boolean := False;
      --  Write-only. End of Flush Interrupt Enable Bit
      FIE           : Boolean := False;
      --  Write-only. Read Bus Error Interrupt Enable Bit
      RBIE          : Boolean := False;
      --  Write-only. Write Bus Error Interrupt Enable Bit
      WBIE          : Boolean := False;
      --  Write-only. Request Overflow Error Interrupt Enable Bit
      ROIE          : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CIE_XDMAC_XDMAC_CHID_Register use record
      BIE           at 0 range 0 .. 0;
      LIE           at 0 range 1 .. 1;
      DIE           at 0 range 2 .. 2;
      FIE           at 0 range 3 .. 3;
      RBIE          at 0 range 4 .. 4;
      WBIE          at 0 range 5 .. 5;
      ROIE          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Channel Interrupt Disable Register
   type XDMAC_CID_XDMAC_XDMAC_CHID_Register is record
      --  Write-only. End of Block Interrupt Disable Bit
      BID           : Boolean := False;
      --  Write-only. End of Linked List Interrupt Disable Bit
      LID           : Boolean := False;
      --  Write-only. End of Disable Interrupt Disable Bit
      DID           : Boolean := False;
      --  Write-only. End of Flush Interrupt Disable Bit
      FID           : Boolean := False;
      --  Write-only. Read Bus Error Interrupt Disable Bit
      RBEID         : Boolean := False;
      --  Write-only. Write Bus Error Interrupt Disable Bit
      WBEID         : Boolean := False;
      --  Write-only. Request Overflow Error Interrupt Disable Bit
      ROID          : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CID_XDMAC_XDMAC_CHID_Register use record
      BID           at 0 range 0 .. 0;
      LID           at 0 range 1 .. 1;
      DID           at 0 range 2 .. 2;
      FID           at 0 range 3 .. 3;
      RBEID         at 0 range 4 .. 4;
      WBEID         at 0 range 5 .. 5;
      ROID          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Channel Interrupt Mask Register
   type XDMAC_CIM_XDMAC_XDMAC_CHID_Register is record
      --  Read-only. End of Block Interrupt Mask Bit
      BIM           : Boolean;
      --  Read-only. End of Linked List Interrupt Mask Bit
      LIM           : Boolean;
      --  Read-only. End of Disable Interrupt Mask Bit
      DIM           : Boolean;
      --  Read-only. End of Flush Interrupt Mask Bit
      FIM           : Boolean;
      --  Read-only. Read Bus Error Interrupt Mask Bit
      RBEIM         : Boolean;
      --  Read-only. Write Bus Error Interrupt Mask Bit
      WBEIM         : Boolean;
      --  Read-only. Request Overflow Error Interrupt Mask Bit
      ROIM          : Boolean;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CIM_XDMAC_XDMAC_CHID_Register use record
      BIM           at 0 range 0 .. 0;
      LIM           at 0 range 1 .. 1;
      DIM           at 0 range 2 .. 2;
      FIM           at 0 range 3 .. 3;
      RBEIM         at 0 range 4 .. 4;
      WBEIM         at 0 range 5 .. 5;
      ROIM          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Channel Interrupt Status Register
   type XDMAC_CIS_XDMAC_XDMAC_CHID_Register is record
      --  Read-only. End of Block Interrupt Status Bit
      BIS           : Boolean;
      --  Read-only. End of Linked List Interrupt Status Bit
      LIS           : Boolean;
      --  Read-only. End of Disable Interrupt Status Bit
      DIS           : Boolean;
      --  Read-only. End of Flush Interrupt Status Bit
      FIS           : Boolean;
      --  Read-only. Read Bus Error Interrupt Status Bit
      RBEIS         : Boolean;
      --  Read-only. Write Bus Error Interrupt Status Bit
      WBEIS         : Boolean;
      --  Read-only. Request Overflow Error Interrupt Status Bit
      ROIS          : Boolean;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CIS_XDMAC_XDMAC_CHID_Register use record
      BIS           at 0 range 0 .. 0;
      LIS           at 0 range 1 .. 1;
      DIS           at 0 range 2 .. 2;
      FIS           at 0 range 3 .. 3;
      RBEIS         at 0 range 4 .. 4;
      WBEIS         at 0 range 5 .. 5;
      ROIS          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype XDMAC_CNDA_XDMAC_XDMAC_CHID_NDA_Field is HAL.UInt30;

   --  Channel Next Descriptor Address Register
   type XDMAC_CNDA_XDMAC_XDMAC_CHID_Register is record
      --  Channel x Next Descriptor Interface
      NDAIF        : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  Channel x Next Descriptor Address
      NDA          : XDMAC_CNDA_XDMAC_XDMAC_CHID_NDA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CNDA_XDMAC_XDMAC_CHID_Register use record
      NDAIF        at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      NDA          at 0 range 2 .. 31;
   end record;

   --  Channel x Next Descriptor Enable
   type CNDC_NDESelect is
     (--  Descriptor fetch is disabled.
      DSCR_FETCH_DIS,
      --  Descriptor fetch is enabled.
      DSCR_FETCH_EN)
     with Size => 1;
   for CNDC_NDESelect use
     (DSCR_FETCH_DIS => 0,
      DSCR_FETCH_EN => 1);

   --  Channel x Next Descriptor Source Update
   type CNDC_NDSUPSelect is
     (--  Source parameters remain unchanged.
      SRC_PARAMS_UNCHANGED,
      --  Source parameters are updated when the descriptor is retrieved.
      SRC_PARAMS_UPDATED)
     with Size => 1;
   for CNDC_NDSUPSelect use
     (SRC_PARAMS_UNCHANGED => 0,
      SRC_PARAMS_UPDATED => 1);

   --  Channel x Next Descriptor Destination Update
   type CNDC_NDDUPSelect is
     (--  Destination parameters remain unchanged.
      DST_PARAMS_UNCHANGED,
      --  Destination parameters are updated when the descriptor is retrieved.
      DST_PARAMS_UPDATED)
     with Size => 1;
   for CNDC_NDDUPSelect use
     (DST_PARAMS_UNCHANGED => 0,
      DST_PARAMS_UPDATED => 1);

   --  Channel x Next Descriptor View
   type CNDC_NDVIEWSelect is
     (--  Next Descriptor View 0
      NDV0,
      --  Next Descriptor View 1
      NDV1,
      --  Next Descriptor View 2
      NDV2,
      --  Next Descriptor View 3
      NDV3)
     with Size => 2;
   for CNDC_NDVIEWSelect use
     (NDV0 => 0,
      NDV1 => 1,
      NDV2 => 2,
      NDV3 => 3);

   --  Channel Next Descriptor Control Register
   type XDMAC_CNDC_XDMAC_XDMAC_CHID_Register is record
      --  Channel x Next Descriptor Enable
      NDE           : CNDC_NDESelect := SAM_SVD.XDMAC.DSCR_FETCH_DIS;
      --  Channel x Next Descriptor Source Update
      NDSUP         : CNDC_NDSUPSelect := SAM_SVD.XDMAC.SRC_PARAMS_UNCHANGED;
      --  Channel x Next Descriptor Destination Update
      NDDUP         : CNDC_NDDUPSelect := SAM_SVD.XDMAC.DST_PARAMS_UNCHANGED;
      --  Channel x Next Descriptor View
      NDVIEW        : CNDC_NDVIEWSelect := SAM_SVD.XDMAC.NDV0;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CNDC_XDMAC_XDMAC_CHID_Register use record
      NDE           at 0 range 0 .. 0;
      NDSUP         at 0 range 1 .. 1;
      NDDUP         at 0 range 2 .. 2;
      NDVIEW        at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype XDMAC_CUBC_XDMAC_XDMAC_CHID_UBLEN_Field is HAL.UInt24;

   --  Channel Microblock Control Register
   type XDMAC_CUBC_XDMAC_XDMAC_CHID_Register is record
      --  Channel x Microblock Length
      UBLEN          : XDMAC_CUBC_XDMAC_XDMAC_CHID_UBLEN_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CUBC_XDMAC_XDMAC_CHID_Register use record
      UBLEN          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype XDMAC_CBC_XDMAC_XDMAC_CHID_BLEN_Field is HAL.UInt12;

   --  Channel Block Control Register
   type XDMAC_CBC_XDMAC_XDMAC_CHID_Register is record
      --  Channel x Block Length
      BLEN           : XDMAC_CBC_XDMAC_XDMAC_CHID_BLEN_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CBC_XDMAC_XDMAC_CHID_Register use record
      BLEN           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Channel x Transfer Type
   type CC_TYPESelect is
     (--  Self-triggered mode (memory-to-memory transfer).
      MEM_TRAN,
      --  Synchronized mode (peripheral-to-memory or memory-to-peripheral transfer).
      PER_TRAN)
     with Size => 1;
   for CC_TYPESelect use
     (MEM_TRAN => 0,
      PER_TRAN => 1);

   --  Channel x Memory Burst Size
   type CC_MBSIZESelect is
     (--  The memory burst size is set to one.
      SINGLE,
      --  The memory burst size is set to four.
      FOUR,
      --  The memory burst size is set to eight.
      EIGHT,
      --  The memory burst size is set to sixteen.
      SIXTEEN)
     with Size => 2;
   for CC_MBSIZESelect use
     (SINGLE => 0,
      FOUR => 1,
      EIGHT => 2,
      SIXTEEN => 3);

   --  Channel x Synchronization
   type CC_DSYNCSelect is
     (--  Peripheral-to-memory transfer.
      PER2MEM,
      --  Memory-to-peripheral transfer.
      MEM2PER)
     with Size => 1;
   for CC_DSYNCSelect use
     (PER2MEM => 0,
      MEM2PER => 1);

   --  Channel x Software Request Trigger
   type CC_SWREQSelect is
     (--  Hardware request line is connected to the peripheral request line.
      HWR_CONNECTED,
      --  Software request is connected to the peripheral request line.
      SWR_CONNECTED)
     with Size => 1;
   for CC_SWREQSelect use
     (HWR_CONNECTED => 0,
      SWR_CONNECTED => 1);

   --  Channel x Fill Block of memory
   type CC_MEMSETSelect is
     (--  Memset is not activated.
      NORMAL_MODE,
      --  Sets the block of memory pointed by DA field to the specified value. This
--  operation is performed on 8-, 16- or 32-bit basis.
      HW_MODE)
     with Size => 1;
   for CC_MEMSETSelect use
     (NORMAL_MODE => 0,
      HW_MODE => 1);

   --  Channel x Chunk Size
   type CC_CSIZESelect is
     (--  1 data transferred
      CHK_1,
      --  2 data transferred
      CHK_2,
      --  4 data transferred
      CHK_4,
      --  8 data transferred
      CHK_8,
      --  16 data transferred
      CHK_16)
     with Size => 3;
   for CC_CSIZESelect use
     (CHK_1 => 0,
      CHK_2 => 1,
      CHK_4 => 2,
      CHK_8 => 3,
      CHK_16 => 4);

   --  Channel x Data Width
   type CC_DWIDTHSelect is
     (--  The data size is set to 8 bits
      BYTE,
      --  The data size is set to 16 bits
      HALFWORD,
      --  The data size is set to 32 bits
      WORD)
     with Size => 2;
   for CC_DWIDTHSelect use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Channel x Source Interface Identifier
   type CC_SIFSelect is
     (--  The data is read through the system bus interface 0.
      AHB_IF0,
      --  The data is read through the system bus interface 1.
      AHB_IF1)
     with Size => 1;
   for CC_SIFSelect use
     (AHB_IF0 => 0,
      AHB_IF1 => 1);

   --  Channel x Destination Interface Identifier
   type CC_DIFSelect is
     (--  The data is written through the system bus interface 0.
      AHB_IF0,
      --  The data is written though the system bus interface 1.
      AHB_IF1)
     with Size => 1;
   for CC_DIFSelect use
     (AHB_IF0 => 0,
      AHB_IF1 => 1);

   --  Channel x Source Addressing Mode
   type CC_SAMSelect is
     (--  The address remains unchanged.
      FIXED_AM,
      --  The addressing mode is incremented (the increment size is set to the data
--  size).
      INCREMENTED_AM,
      --  The microblock stride is added at the microblock boundary.
      UBS_AM,
      --  The microblock stride is added at the microblock boundary, the data stride
--  is added at the data boundary.
      UBS_DS_AM)
     with Size => 2;
   for CC_SAMSelect use
     (FIXED_AM => 0,
      INCREMENTED_AM => 1,
      UBS_AM => 2,
      UBS_DS_AM => 3);

   --  Channel x Destination Addressing Mode
   type CC_DAMSelect is
     (--  The address remains unchanged.
      FIXED_AM,
      --  The addressing mode is incremented (the increment size is set to the data
--  size).
      INCREMENTED_AM,
      --  The microblock stride is added at the microblock boundary.
      UBS_AM,
      --  The microblock stride is added at the microblock boundary; the data stride
--  is added at the data boundary.
      UBS_DS_AM)
     with Size => 2;
   for CC_DAMSelect use
     (FIXED_AM => 0,
      INCREMENTED_AM => 1,
      UBS_AM => 2,
      UBS_DS_AM => 3);

   --  Channel Initialization Terminated (this bit is read-only)
   type CC_INITDSelect is
     (--  Channel initialization is in progress.
      IN_PROGRESS,
      --  Channel initialization is completed.
      TERMINATED)
     with Size => 1;
   for CC_INITDSelect use
     (IN_PROGRESS => 0,
      TERMINATED => 1);

   --  Read in Progress (this bit is read-only)
   type CC_RDIPSelect is
     (--  No active read transaction on the bus.
      DONE,
      --  A read transaction is in progress.
      IN_PROGRESS)
     with Size => 1;
   for CC_RDIPSelect use
     (DONE => 0,
      IN_PROGRESS => 1);

   --  Write in Progress (this bit is read-only)
   type CC_WRIPSelect is
     (--  No active write transaction on the bus.
      DONE,
      --  A write transaction is in progress.
      IN_PROGRESS)
     with Size => 1;
   for CC_WRIPSelect use
     (DONE => 0,
      IN_PROGRESS => 1);

   --  Channel x Peripheral Hardware Request Line Identifier
   type CC_PERIDSelect is
     (--  HSMCI
      HSMCI,
      --  SPI0_TX
      SPI0_TX,
      --  SPI0_RX
      SPI0_RX,
      --  SPI1_TX
      SPI1_TX,
      --  SPI1_RX
      SPI1_RX,
      --  QSPI_TX
      QSPI_TX,
      --  QSPI_RX
      QSPI_RX,
      --  USART0_TX
      USART0_TX,
      --  USART0_RX
      USART0_RX,
      --  USART1_TX
      USART1_TX,
      --  USART1_RX
      USART1_RX,
      --  USART2_TX
      USART2_TX,
      --  USART2_RX
      USART2_RX,
      --  PWM0
      PWM0,
      --  TWIHS0_TX
      TWIHS0_TX,
      --  TWIHS0_RX
      TWIHS0_RX,
      --  TWIHS1_TX
      TWIHS1_TX,
      --  TWIHS1_RX
      TWIHS1_RX,
      --  TWIHS2_TX
      TWIHS2_TX,
      --  TWIHS2_RX
      TWIHS2_RX,
      --  UART0_TX
      UART0_TX,
      --  UART0_RX
      UART0_RX,
      --  UART1_TX
      UART1_TX,
      --  UART1_RX
      UART1_RX,
      --  UART2_TX
      UART2_TX,
      --  UART2_RX
      UART2_RX,
      --  UART3_TX
      UART3_TX,
      --  UART3_RX
      UART3_RX,
      --  UART4_TX
      UART4_TX,
      --  UART4_RX
      UART4_RX,
      --  DACC0
      DACC0,
      --  DACC1
      DACC1,
      --  SSC_TX
      SSC_TX,
      --  SSC_RX
      SSC_RX,
      --  PIOA
      PIOA,
      --  AFEC0
      AFEC0,
      --  AFEC1
      AFEC1,
      --  AES_TX
      AES_TX,
      --  AES_RX
      AES_RX,
      --  PWM1
      PWM1,
      --  TC0
      TC0,
      --  TC3
      TC3,
      --  TC6
      TC6,
      --  TC9
      TC9,
      --  I2SC0_TX_LEFT
      I2SC0_TX_LEFT,
      --  I2SC0_RX_LEFT
      I2SC0_RX_LEFT,
      --  I2SC1_TX_LEFT
      I2SC1_TX_LEFT,
      --  I2SC1_RX_LEFT
      I2SC1_RX_LEFT,
      --  I2SC0_TX_RIGHT
      I2SC0_TX_RIGHT,
      --  I2SC0_RX_RIGHT
      I2SC0_RX_RIGHT,
      --  I2SC1_TX_RIGHT
      I2SC1_TX_RIGHT,
      --  I2SC1_RX_RIGHT
      I2SC1_RX_RIGHT)
     with Size => 7;
   for CC_PERIDSelect use
     (HSMCI => 0,
      SPI0_TX => 1,
      SPI0_RX => 2,
      SPI1_TX => 3,
      SPI1_RX => 4,
      QSPI_TX => 5,
      QSPI_RX => 6,
      USART0_TX => 7,
      USART0_RX => 8,
      USART1_TX => 9,
      USART1_RX => 10,
      USART2_TX => 11,
      USART2_RX => 12,
      PWM0 => 13,
      TWIHS0_TX => 14,
      TWIHS0_RX => 15,
      TWIHS1_TX => 16,
      TWIHS1_RX => 17,
      TWIHS2_TX => 18,
      TWIHS2_RX => 19,
      UART0_TX => 20,
      UART0_RX => 21,
      UART1_TX => 22,
      UART1_RX => 23,
      UART2_TX => 24,
      UART2_RX => 25,
      UART3_TX => 26,
      UART3_RX => 27,
      UART4_TX => 28,
      UART4_RX => 29,
      DACC0 => 30,
      DACC1 => 31,
      SSC_TX => 32,
      SSC_RX => 33,
      PIOA => 34,
      AFEC0 => 35,
      AFEC1 => 36,
      AES_TX => 37,
      AES_RX => 38,
      PWM1 => 39,
      TC0 => 40,
      TC3 => 41,
      TC6 => 42,
      TC9 => 43,
      I2SC0_TX_LEFT => 44,
      I2SC0_RX_LEFT => 45,
      I2SC1_TX_LEFT => 46,
      I2SC1_RX_LEFT => 47,
      I2SC0_TX_RIGHT => 48,
      I2SC0_RX_RIGHT => 49,
      I2SC1_TX_RIGHT => 50,
      I2SC1_RX_RIGHT => 51);

   --  Channel Configuration Register
   type XDMAC_CC_XDMAC_XDMAC_CHID_Register is record
      --  Channel x Transfer Type
      TYPE_k         : CC_TYPESelect := SAM_SVD.XDMAC.MEM_TRAN;
      --  Channel x Memory Burst Size
      MBSIZE         : CC_MBSIZESelect := SAM_SVD.XDMAC.SINGLE;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Channel x Synchronization
      DSYNC          : CC_DSYNCSelect := SAM_SVD.XDMAC.PER2MEM;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Channel x Software Request Trigger
      SWREQ          : CC_SWREQSelect := SAM_SVD.XDMAC.HWR_CONNECTED;
      --  Channel x Fill Block of memory
      MEMSET         : CC_MEMSETSelect := SAM_SVD.XDMAC.NORMAL_MODE;
      --  Channel x Chunk Size
      CSIZE          : CC_CSIZESelect := SAM_SVD.XDMAC.CHK_1;
      --  Channel x Data Width
      DWIDTH         : CC_DWIDTHSelect := SAM_SVD.XDMAC.BYTE;
      --  Channel x Source Interface Identifier
      SIF            : CC_SIFSelect := SAM_SVD.XDMAC.AHB_IF0;
      --  Channel x Destination Interface Identifier
      DIF            : CC_DIFSelect := SAM_SVD.XDMAC.AHB_IF0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Channel x Source Addressing Mode
      SAM            : CC_SAMSelect := SAM_SVD.XDMAC.FIXED_AM;
      --  Channel x Destination Addressing Mode
      DAM            : CC_DAMSelect := SAM_SVD.XDMAC.FIXED_AM;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Channel Initialization Terminated (this bit is read-only)
      INITD          : CC_INITDSelect := SAM_SVD.XDMAC.IN_PROGRESS;
      --  Read in Progress (this bit is read-only)
      RDIP           : CC_RDIPSelect := SAM_SVD.XDMAC.DONE;
      --  Write in Progress (this bit is read-only)
      WRIP           : CC_WRIPSelect := SAM_SVD.XDMAC.DONE;
      --  Channel x Peripheral Hardware Request Line Identifier
      PERID          : CC_PERIDSelect := SAM_SVD.XDMAC.HSMCI;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CC_XDMAC_XDMAC_CHID_Register use record
      TYPE_k         at 0 range 0 .. 0;
      MBSIZE         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DSYNC          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SWREQ          at 0 range 6 .. 6;
      MEMSET         at 0 range 7 .. 7;
      CSIZE          at 0 range 8 .. 10;
      DWIDTH         at 0 range 11 .. 12;
      SIF            at 0 range 13 .. 13;
      DIF            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 17;
      DAM            at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      INITD          at 0 range 21 .. 21;
      RDIP           at 0 range 22 .. 22;
      WRIP           at 0 range 23 .. 23;
      PERID          at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype XDMAC_CDS_MSP_XDMAC_XDMAC_CHID_SDS_MSP_Field is HAL.UInt16;
   subtype XDMAC_CDS_MSP_XDMAC_XDMAC_CHID_DDS_MSP_Field is HAL.UInt16;

   --  Channel Data Stride Memory Set Pattern
   type XDMAC_CDS_MSP_XDMAC_XDMAC_CHID_Register is record
      --  Channel x Source Data stride or Memory Set Pattern
      SDS_MSP : XDMAC_CDS_MSP_XDMAC_XDMAC_CHID_SDS_MSP_Field := 16#0#;
      --  Channel x Destination Data Stride or Memory Set Pattern
      DDS_MSP : XDMAC_CDS_MSP_XDMAC_XDMAC_CHID_DDS_MSP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CDS_MSP_XDMAC_XDMAC_CHID_Register use record
      SDS_MSP at 0 range 0 .. 15;
      DDS_MSP at 0 range 16 .. 31;
   end record;

   subtype XDMAC_CSUS_XDMAC_XDMAC_CHID_SUBS_Field is HAL.UInt24;

   --  Channel Source Microblock Stride
   type XDMAC_CSUS_XDMAC_XDMAC_CHID_Register is record
      --  Channel x Source Microblock Stride
      SUBS           : XDMAC_CSUS_XDMAC_XDMAC_CHID_SUBS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CSUS_XDMAC_XDMAC_CHID_Register use record
      SUBS           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype XDMAC_CDUS_XDMAC_XDMAC_CHID_DUBS_Field is HAL.UInt24;

   --  Channel Destination Microblock Stride
   type XDMAC_CDUS_XDMAC_XDMAC_CHID_Register is record
      --  Channel x Destination Microblock Stride
      DUBS           : XDMAC_CDUS_XDMAC_XDMAC_CHID_DUBS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XDMAC_CDUS_XDMAC_XDMAC_CHID_Register use record
      DUBS           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Channel Interrupt Enable Register
   type XDMAC_XDMAC_CHID_Cluster is record
      --  Channel Interrupt Enable Register
      CIE     : aliased XDMAC_CIE_XDMAC_XDMAC_CHID_Register;
      --  Channel Interrupt Disable Register
      CID     : aliased XDMAC_CID_XDMAC_XDMAC_CHID_Register;
      --  Channel Interrupt Mask Register
      CIM     : aliased XDMAC_CIM_XDMAC_XDMAC_CHID_Register;
      --  Channel Interrupt Status Register
      CIS     : aliased XDMAC_CIS_XDMAC_XDMAC_CHID_Register;
      --  Channel Source Address Register
      CSA     : aliased HAL.UInt32;
      --  Channel Destination Address Register
      CDA     : aliased HAL.UInt32;
      --  Channel Next Descriptor Address Register
      CNDA    : aliased XDMAC_CNDA_XDMAC_XDMAC_CHID_Register;
      --  Channel Next Descriptor Control Register
      CNDC    : aliased XDMAC_CNDC_XDMAC_XDMAC_CHID_Register;
      --  Channel Microblock Control Register
      CUBC    : aliased XDMAC_CUBC_XDMAC_XDMAC_CHID_Register;
      --  Channel Block Control Register
      CBC     : aliased XDMAC_CBC_XDMAC_XDMAC_CHID_Register;
      --  Channel Configuration Register
      CC      : aliased XDMAC_CC_XDMAC_XDMAC_CHID_Register;
      --  Channel Data Stride Memory Set Pattern
      CDS_MSP : aliased XDMAC_CDS_MSP_XDMAC_XDMAC_CHID_Register;
      --  Channel Source Microblock Stride
      CSUS    : aliased XDMAC_CSUS_XDMAC_XDMAC_CHID_Register;
      --  Channel Destination Microblock Stride
      CDUS    : aliased XDMAC_CDUS_XDMAC_XDMAC_CHID_Register;
   end record
     with Size => 512;

   for XDMAC_XDMAC_CHID_Cluster use record
      CIE     at 16#0# range 0 .. 31;
      CID     at 16#4# range 0 .. 31;
      CIM     at 16#8# range 0 .. 31;
      CIS     at 16#C# range 0 .. 31;
      CSA     at 16#10# range 0 .. 31;
      CDA     at 16#14# range 0 .. 31;
      CNDA    at 16#18# range 0 .. 31;
      CNDC    at 16#1C# range 0 .. 31;
      CUBC    at 16#20# range 0 .. 31;
      CBC     at 16#24# range 0 .. 31;
      CC      at 16#28# range 0 .. 31;
      CDS_MSP at 16#2C# range 0 .. 31;
      CSUS    at 16#30# range 0 .. 31;
      CDUS    at 16#34# range 0 .. 31;
   end record;

   --  Channel Interrupt Enable Register
   type XDMAC_XDMAC_CHID_Clusters is array (0 .. 23)
     of XDMAC_XDMAC_CHID_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  Extensible DMA Controller
   type XDMAC_Peripheral is record
      --  Global Type Register
      GTYPE            : aliased XDMAC_GTYPE_Register;
      --  Global Configuration Register
      GCFG             : aliased XDMAC_GCFG_Register;
      --  Global Weighted Arbiter Configuration Register
      GWAC             : aliased XDMAC_GWAC_Register;
      --  Global Interrupt Enable Register
      GIE              : aliased XDMAC_GIE_Register;
      --  Global Interrupt Disable Register
      GID              : aliased XDMAC_GID_Register;
      --  Global Interrupt Mask Register
      GIM              : aliased XDMAC_GIM_Register;
      --  Global Interrupt Status Register
      GIS              : aliased XDMAC_GIS_Register;
      --  Global Channel Enable Register
      GE               : aliased XDMAC_GE_Register;
      --  Global Channel Disable Register
      GD               : aliased XDMAC_GD_Register;
      --  Global Channel Status Register
      GS               : aliased XDMAC_GS_Register;
      --  Global Channel Read Suspend Register
      GRS              : aliased XDMAC_GRS_Register;
      --  Global Channel Write Suspend Register
      GWS              : aliased XDMAC_GWS_Register;
      --  Global Channel Read Write Suspend Register
      GRWS             : aliased XDMAC_GRWS_Register;
      --  Global Channel Read Write Resume Register
      GRWR             : aliased XDMAC_GRWR_Register;
      --  Global Channel Software Request Register
      GSWR             : aliased XDMAC_GSWR_Register;
      --  Global Channel Software Request Status Register
      GSWS             : aliased XDMAC_GSWS_Register;
      --  Global Channel Software Flush Request Register
      GSWF             : aliased XDMAC_GSWF_Register;
      --  Channel Interrupt Enable Register
      XDMAC_XDMAC_CHID : aliased XDMAC_XDMAC_CHID_Clusters;
   end record
     with Volatile;

   for XDMAC_Peripheral use record
      GTYPE            at 16#0# range 0 .. 31;
      GCFG             at 16#4# range 0 .. 31;
      GWAC             at 16#8# range 0 .. 31;
      GIE              at 16#C# range 0 .. 31;
      GID              at 16#10# range 0 .. 31;
      GIM              at 16#14# range 0 .. 31;
      GIS              at 16#18# range 0 .. 31;
      GE               at 16#1C# range 0 .. 31;
      GD               at 16#20# range 0 .. 31;
      GS               at 16#24# range 0 .. 31;
      GRS              at 16#28# range 0 .. 31;
      GWS              at 16#2C# range 0 .. 31;
      GRWS             at 16#30# range 0 .. 31;
      GRWR             at 16#34# range 0 .. 31;
      GSWR             at 16#38# range 0 .. 31;
      GSWS             at 16#3C# range 0 .. 31;
      GSWF             at 16#40# range 0 .. 31;
      XDMAC_XDMAC_CHID at 16#50# range 0 .. 12287;
   end record;

   --  Extensible DMA Controller
   XDMAC_Periph : aliased XDMAC_Peripheral
     with Import, Address => XDMAC_Base;

end SAM_SVD.XDMAC;
