DBCC DROPCLEANBUFFERS 
GO
DBCC FREEPROCCACHE
GO

/****** Object:  Schema [IEC61850]    Script Date: 06/13/2013 09:46:34 ******/
CREATE SCHEMA [IEC61850] AUTHORIZATION [dbo]
GO

CREATE SCHEMA [FPN] AUTHORIZATION [dbo]
GO


/****** Object:  Table [IEC61850].[IPowerSource]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[IPowerSource](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[PowerSourcePriority] [int] NOT NULL,
 CONSTRAINT [PK_IPowerSource] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[InstanceData]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[InstanceData](
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](255) COLLATE Latin1_General_CS_AS NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Index] [int] NULL,
	[AccessControl] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ShortAddress] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Value] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ValKind] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ValImport] [bit] NULL,
 CONSTRAINT [PK_InstanceData] PRIMARY KEY CLUSTERED 
(
	[LogicalNodeID] ASC,
	[Path] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[IedSymbol]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[IedSymbol](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Direction] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Color] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ScreenColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[SourceSymbol] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RelativeSize] [real] NULL,
 CONSTRAINT [PK_IedSymbol] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[IedClient]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[IedClient](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[TargetIedID] [uniqueidentifier] NULL,
	[IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[AccessPointName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[LNInst] [int] NULL,
	[OrderIndex] [int] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[ParentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_IedClient] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[GeneralEquipment]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[GeneralEquipment](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[ParentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[EquipmentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[DisplayName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsVirtual] [bit] NOT NULL,
	[NamePlacement] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NormalColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RelativeSize] [real] NOT NULL,
	[ShowAlarmSymbol] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ShowNonGoodQualitySymbol] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_GeneralEquipment] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Function]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Function](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[ParentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Type] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_Function] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[OnOffButton]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[OnOffButton](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Family] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Style] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Size] [float] NULL,
	[Color] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Desc] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Direction] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Shape] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ButtonColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ShadeColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NamePlacement] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DisplayName] [bit] NULL,
	[RelativeSize] [real] NULL,
	[OnText] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OffText] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OnColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OffColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Input_IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Input_LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Input_LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[Input_Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Input_LNInst] [int] NOT NULL,
	[Input_DOName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Input_DAName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Input_OnValue] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Command_IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Command_LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Command_LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[Command_Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Command_LNInst] [int] NULL,
	[Command_DOName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Command_DAName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Command_OnValue] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Command_OffValue] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Command_ConfirmActivation] [bit] NULL,
	[Command_ConfirmDialogOn] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Command_ConfirmDialogOff] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Command_FailureMessageOn] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Command_FailureMessageOff] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_OnOffButton] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[MeasurementTextBox]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[MeasurementTextBox](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Direction] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[TextAnchor] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_MeasurementTextBox] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Measurement]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Measurement](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NULL,
	[IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[LNInst] [int] NULL,
	[DOName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[DAName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ShowUnit] [bit] NULL,
	[ShowAlarmSymbol] [bit] NULL,
	[ShowD] [bit] NULL,
	[Text] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[Decimals] [int] NULL,
	[DisplayMultiplier] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[DeviceUnit] [nvarchar](27) COLLATE Latin1_General_CI_AS NULL,
	[DeviceMultiplier] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[LogicalNodeType]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[LogicalNodeType](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[LNClass] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[IedType] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[SclFullDocumentID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_LogicalNodeType] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[EnumType]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[EnumType](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[SclFullDocumentID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_EnumType] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[DisplayVoltage]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[DisplayVoltage](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Direction] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[TextAnchor] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ShowUnit] [bit] NOT NULL,
 CONSTRAINT [PK_DisplayVoltage] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[DisplayName]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[DisplayName](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Direction] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[TextAnchor] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_DisplayName_1] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[DataAttributeType]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[DataAttributeType](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[IedType] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[SclFullDocumentID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DataAttributeType] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[DataObjectType]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[DataObjectType](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[CdcClass] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[IedType] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[IsPrimitive] [bit] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[SclFullDocumentID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DataObjectType] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Annotation]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Annotation](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Text] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[PosX] [int] NULL,
	[PosY] [int] NULL,
	[Direction] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[TextAnchor] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[HyperLink] [nvarchar](500) COLLATE Latin1_General_CI_AS NULL,
	[Family] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Style] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Size] [float] NULL,
	[Color] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Annotation] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[AlarmSymbol]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[AlarmSymbol](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Symbol] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Direction] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[OpcSource] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[RelativeSize] [real] NULL,
 CONSTRAINT [PK_AlarmSymbol] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[ConductingEquipment]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[ConductingEquipment](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[EquipmentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[DisplayName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsVirtual] [bit] NOT NULL,
	[NamePlacement] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NormalColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RelativeSize] [real] NOT NULL,
	[ShowAlarmSymbol] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ShowNonGoodQualitySymbol] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[DisplaySymbol] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[FeederType] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[EarthCoordinatesPosX] [int] NULL,
	[EarthCoordinatesPosY] [int] NULL,
	[EarthDirection] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[EarthViaCoordinatesPosX] [int] NULL,
	[EarthViaCoordinatesPosY] [int] NULL,
	[MasterID] [uniqueidentifier] NULL,
	[ParentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_ConductingEquipment] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[CommunicationSubNetwork]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[CommunicationSubNetwork](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[ProtocolType] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[BitRate] [float] NULL,
	[SclFullDocumentID] [uniqueidentifier] NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_CommunicationSubNetwork] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[TextElementInstanceData]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[TextElementInstanceData](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Source] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Text] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_TextElementInstanceData] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[TextElement]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[TextElement](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[Source] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Text] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_TextElement] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SwitchIndicator]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SwitchIndicator](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Finnish_Swedish_CI_AS NOT NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Direction] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[LNInst] [int] NULL,
	[DOName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DAName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Color] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RelativeSize] [real] NULL,
 CONSTRAINT [PK_SwitchIndicator] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Substation]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Substation](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[SclFullDocumentID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Substation] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[PushButtonWithValue]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[PushButtonWithValue](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Family] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Style] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Size] [float] NULL,
	[Color] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Desc] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Direction] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Shape] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ButtonColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ShadeColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NamePlacement] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DisplayName] [bit] NULL,
	[RelativeSize] [real] NULL,
	[InsertValueToText] [bit] NULL,
	[Text] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Input_IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Input_LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Input_LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[Input_Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Input_LNInst] [int] NULL,
	[Input_DOName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Input_DAName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Command_IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Command_LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Command_LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[Command_Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Command_LNInst] [int] NOT NULL,
	[Command_DOName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Command_DAName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Command_ConfirmActivation] [bit] NULL,
	[Command_ConfirmDialog] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Command_FailureMessage] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_PushButtonWithValue] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[PushButtonWeb]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[PushButtonWeb](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Family] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Style] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Size] [float] NULL,
	[Color] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Desc] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Direction] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Shape] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ButtonColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ShadeColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NamePlacement] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DisplayName] [bit] NULL,
	[RelativeSize] [real] NULL,
	[Text] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Url] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_PushButtonWeb] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[PushButtonApp]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[PushButtonApp](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Family] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Style] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Size] [float] NULL,
	[Color] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Desc] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Direction] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Shape] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ButtonColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ShadeColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NamePlacement] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DisplayName] [bit] NULL,
	[RelativeSize] [real] NULL,
	[Text] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Cmd] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[CmdArguments] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Image] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_PushButtonApp] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[PushButton]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[PushButton](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Family] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Style] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Size] [float] NULL,
	[Color] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Desc] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Direction] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Shape] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ButtonColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ShadeColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NamePlacement] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DisplayName] [bit] NULL,
	[RelativeSize] [real] NULL,
	[Text] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Input_IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Input_LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Input_LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[Input_Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Input_LNInst] [int] NOT NULL,
	[Input_DOName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Input_DAName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[CommandValue] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ConfirmActivation] [bit] NULL,
	[ConfirmDialog] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[FailureMessage] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_PushButton] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[ProtocolNamespace]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[ProtocolNamespace](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[DataAttributeTypeID] [uniqueidentifier] NULL,
	[DataAttributeID] [uniqueidentifier] NULL,
	[Type] [nvarchar](255) COLLATE Finnish_Swedish_CI_AS NOT NULL,
	[Content] [nvarchar](255) COLLATE Finnish_Swedish_CI_AS NOT NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_ProtocolNamespace] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Property]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Property](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Value] [nvarchar](500) COLLATE Latin1_General_CI_AS NOT NULL,
	[Type] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Category] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Project]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Project](
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ObjectID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[PrivateElementInstanceData]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[PrivateElementInstanceData](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[Type] [nvarchar](4000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Source] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Data] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_PrivateElementInstanceData] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[PrivateElement]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[PrivateElement](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[Type] [nvarchar](4000) COLLATE Latin1_General_CI_AS NOT NULL,
	[Source] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Data] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_PrivateElement] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[PowerTransformer]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[PowerTransformer](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[ParentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[EquipmentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[DisplayName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsVirtual] [bit] NOT NULL,
	[NamePlacement] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NormalColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RelativeSize] [real] NOT NULL,
	[ShowAlarmSymbol] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ShowNonGoodQualitySymbol] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_PowerTransformer] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Point]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Point](
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ParentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[ParentObjectID] [uniqueidentifier] NULL,
	[ParentPropertyName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Point] PRIMARY KEY CLUSTERED 
(
	[ParentID] ASC,
	[OrderIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[PlacedElement]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[PlacedElement](
	[ParentID] [uniqueidentifier] NOT NULL,
	[RelativePosX] [int] NULL,
	[RelativePosY] [int] NULL,
	[Direction] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_PlacedElement] PRIMARY KEY CLUSTERED 
(
	[ParentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SclFullDocument]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SclFullDocument](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_SclFullDocument] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SchemaInformation]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SchemaInformation](
	[Key] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Value] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_SchemaInformation] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[RefinedColor]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[RefinedColor](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Section] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[OtherNode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[SwitchingDevice] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Generator] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[InFeeder] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[OutFeeder] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[PrimaryWinding] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[SecondaryWinding] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[TertiaryWinding] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[StationSwitchIndicator] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[BaySwitchIndicator] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[IedSymbol] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[IedSymbolScreen] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[OtherSymbol] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[ElementBackground] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_ColorSetting] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Rectangle]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Rectangle](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[ParentType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[PosX] [int] NOT NULL,
	[PosY] [int] NOT NULL,
	[Height] [int] NULL,
	[Width] [int] NULL,
	[FillColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LineColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Opacity] [float] NULL,
	[LineStyle] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Rectangle] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Service]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Service](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[Max] [bigint] NULL,
	[MaxAttributes] [bigint] NULL,
	[SGEdit] [bit] NULL,
	[ConfSG] [bit] NULL,
	[Modify] [bit] NULL,
	[BufMode] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[BufConf] [bit] NULL,
	[CBName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DatSet] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RptID] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OptFields] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[BufTime] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[TrgOps] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[IntgPd] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LogEna] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[AppID] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DataLabel] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[SvID] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[SmpRate] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[FixPrefix] [bit] NULL,
	[FixLnInst] [bit] NULL,
	[Goose] [bit] NULL,
	[Gsse] [bit] NULL,
	[BufReport] [bit] NULL,
	[UnbufReport] [bit] NULL,
	[ReadLog] [bit] NULL,
	[Sv] [bit] NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[ParentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ResvTms] [bit] NULL,
	[Owner] [bit] NULL,
	[SamplesPerSec] [bit] NULL,
	[PdcTimeStamp] [bit] NULL,
	[FixedOffs] [bit] NULL,
	[Delivery] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DeliveryConf] [bit] NULL,
	[Mms] [bit] NULL,
	[Ftp] [bit] NULL,
	[Ftps] [bit] NULL,
	[SupportsLdName] [bit] NULL,
	[MaxReports] [bigint] NULL,
	[MaxGoose] [bigint] NULL,
	[MaxSmv] [bigint] NULL,
	[TimeSyncProt] [bit] NULL,
	[Sntp] [bit] NULL,
	[C37_238] [bit] NULL,
	[Other] [bit] NULL,
	[SetToRo] [bit] NULL,
	[Hsr] [bit] NULL,
	[Prp] [bit] NULL,
	[Rstp] [bit] NULL,
	[Ipv6] [bit] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[LNode]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[LNode](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[LNodeContainerID] [uniqueidentifier] NOT NULL,
	[LNodeContainerType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[LogicalNodeID] [uniqueidentifier] NULL,
	[IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[LNInst] [int] NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_LNode] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SLD_DefaultDisplayMultiplierFor]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SLD_DefaultDisplayMultiplierFor](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[Unit] [int] NOT NULL,
	[Multiplier] [int] NULL,
 CONSTRAINT [PK_SLD_DefaultDisplayMultiplierFor] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SLD]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SLD](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[BackgroundColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[SymbolsLibrary] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[CustomerSymbolsLibrary] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[TaggingMethod] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[LineStyle] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[DefaultShowStarSymbol] [bit] NULL,
	[DefaultShowDeltaSymbol] [bit] NULL,
	[Sizes_ObjectID] [uniqueidentifier] NOT NULL,
	[Sizes_SldWidth] [int] NULL,
	[Sizes_SldHeight] [int] NULL,
	[Sizes_ElementSize] [int] NOT NULL,
	[Sizes_BusbarRelativeThickness] [float] NULL,
	[Sizes_SwitchIndicatorRelativeSize] [float] NULL,
	[Sizes_AlarmSymbolRelativeSize] [float] NULL,
	[Sizes_IEDSymbolRelativeSize] [float] NULL,
	[Sizes_ButtonRelativeSize] [float] NULL,
	[AlarmSettings_ObjectID] [uniqueidentifier] NULL,
	[AlarmSettings_AlarmOffColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[AlarmSettings_AlarmAckColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[AlarmSettings_AlarmUnAckColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[AlarmSettings_NotGoodQualityColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[AlarmSettings_AlarmWithConductingEquipment] [bit] NULL,
	[AlarmSettings_AlarmSymbolWithConductingEquipment] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[AlarmSettings_ShowMeasurementAlarmSymbol] [bit] NULL,
	[AlarmSettings_ShowAlarmForSwitch] [bit] NULL,
	[AlarmSettings_ShowNonGoodQualityForConductingEquipments] [bit] NULL,
	[MeasurementStatus_ObjectID] [uniqueidentifier] NULL,
	[MeasurementStatus_LowAlarmColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[MeasurementStatus_LowWarningColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[MeasurementStatus_NormalColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[MeasurementStatus_HighWarningColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[MeasurementStatus_HighAlarmColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_ObjectID] [uniqueidentifier] NULL,
	[DefaultColors_Section] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_OtherNode] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_SwitchingDevice] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_Generator] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_InFeeder] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_OutFeeder] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_PrimaryWinding] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_SecondaryWinding] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_TertiaryWinding] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_StationSwitchIndicator] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_BaySwitchIndicator] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_IEDSymbol] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_IEDSymbolScreen] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_OtherSymbol] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_ElementBackground] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_Selected] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_HotLineTag] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_InformationTag] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_Simulated] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[DefaultColors_Substituted] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[NameDisplay_ObjectID] [uniqueidentifier] NULL,
	[NameDisplay_ConnectivityNode] [bit] NULL,
	[NameDisplay_ConnectivityNodeNamePlacement] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[NameDisplay_SwitchingDevice] [bit] NULL,
	[NameDisplay_SwitchingDeviceNamePlacement] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[NameDisplay_Generator] [bit] NULL,
	[NameDisplay_GeneratorNamePlacement] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[NameDisplay_Feeder] [bit] NULL,
	[NameDisplay_FeederNamePlacement] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[NameDisplay_PowerTransformer] [bit] NULL,
	[NameDisplay_PowerTransformerNamePlacement] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[NameDisplay_Winding] [bit] NULL,
	[NameDisplay_WindingNamePlacement] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[NameDisplay_Button] [bit] NULL,
	[NameDisplay_ButtonNamePlacement] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[NameDisplay_OtherElement] [bit] NULL,
	[NameDisplay_OtherElementNamePlacement] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_ObjectID] [uniqueidentifier] NULL,
	[Fonts_Family] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_Style] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_Size] [float] NULL,
	[Fonts_Color] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_ElementFontFamily] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_ElementFontStyle] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_ElementFontSize] [float] NULL,
	[Fonts_ElementFontColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_MeasurementFontFamily] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_MeasurementFontStyle] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_MeasurementFontSize] [float] NULL,
	[Fonts_MeasurementFontColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_StationSwitchIndicatorFontFamily] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_StationSwitchIndicatorFontStyle] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_StationSwitchIndicatorFontSize] [float] NULL,
	[Fonts_StationSwitchIndicatorFontColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_BaySwitchIndicatorFontFamily] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_BaySwitchIndicatorFontStyle] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_BaySwitchIndicatorFontSize] [float] NULL,
	[Fonts_BaySwitchIndicatorFontColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_SubstationFontFamily] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_SubstationFontStyle] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_SubstationFontSize] [float] NULL,
	[Fonts_SubstationFontColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_VoltageLevelFontFamily] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_VoltageLevelFontStyle] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_VoltageLevelFontSize] [float] NULL,
	[Fonts_VoltageLevelFontColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_BayFontFamily] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_BayFontStyle] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_BayFontSize] [float] NULL,
	[Fonts_BayFontColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_AnnotationFontFamily] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_AnnotationFontStyle] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_AnnotationFontSize] [float] NULL,
	[Fonts_AnnotationFontColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_IEDFontFamily] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_IEDFontStyle] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_IEDFontSize] [float] NULL,
	[Fonts_IEDFontColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_ButtonFontFamily] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_ButtonFontStyle] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Fonts_ButtonFontSize] [float] NULL,
	[Fonts_ButtonFontColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[MeasurementPrecision_ObjectID] [uniqueidentifier] NULL,
	[MeasurementPrecision_DefaultDecimals] [int] NULL,
	[DisplayMultipliers_DefaultDisplayMultiplier] [int] NULL,
	[Title_Text] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Title_FontFamily] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Title_FontStyle] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[Title_FontSize] [float] NULL,
	[Title_FontColor] [nvarchar](16) COLLATE Latin1_General_CI_AS NULL,
	[Title_PosX] [int] NULL,
	[Title_PosY] [int] NULL,
	[Title_Direction] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[Title_TextAnchor] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_SLD] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SingleLineDiagram]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SingleLineDiagram](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[SclFullDocumentID] [uniqueidentifier] NOT NULL,
	[SymbolsLibrary] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Sizes_AlarmSymbolRelativeSize] [real] NOT NULL,
	[Sizes_BusbarRelativeThickness] [real] NOT NULL,
	[Sizes_ButtonRelativeSize] [real] NOT NULL,
	[Sizes_ElementSize] [int] NOT NULL,
	[Sizes_IEDSymbolRelativeSize] [real] NOT NULL,
	[Sizes_SldHeight] [int] NOT NULL,
	[Sizes_SldWidth] [int] NOT NULL,
	[Sizes_SwitchIndicatorRelativeSize] [real] NOT NULL,
 CONSTRAINT [PK_SingleLineDiagram] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SubFunction]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SubFunction](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[FunctionID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Type] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_SubFunction] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[StructuredDataObject]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[StructuredDataObject](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[DataObjectTypeID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[TypeID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[Count] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_StructuredDataObject] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SmvSecPerSamples]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SmvSecPerSamples](
	[ServiceID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[SecPerSamples] [bigint] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SmvSecPerSamples] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC,
	[OrderIndex] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SmvSamplesPerSec]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SmvSamplesPerSec](
	[ServiceID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[SamplesPerSec] [bigint] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SmvSamplesPerSec] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC,
	[OrderIndex] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SmvSampleRate]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SmvSampleRate](
	[ServiceID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[SampleRate] [bigint] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SmvSampleRate] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC,
	[OrderIndex] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[VoltageLevel]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[VoltageLevel](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[SubstationID] [uniqueidentifier] NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[Voltage] [float] NULL,
	[Multiplier] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NomFreq] [float] NULL,
	[NumPhases] [int] NULL,
 CONSTRAINT [PK_VoltageLevel] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[TransformerWinding]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[TransformerWinding](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[PowerTransformerID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[EquipmentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[DisplayName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsVirtual] [bit] NOT NULL,
	[NamePlacement] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NormalColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RelativeSize] [real] NOT NULL,
	[ShowAlarmSymbol] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ShowNonGoodQualitySymbol] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[DisplaySymbol] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[WindingType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_TransformerWinding] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Terminal]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Terminal](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ConductingEquipmentID] [uniqueidentifier] NULL,
	[TransformerWindingID] [uniqueidentifier] NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[ConnectivityNodeID] [uniqueidentifier] NULL,
	[NeutralPoint] [bit] NOT NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_Terminal] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[OPCServer]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[OPCServer](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ProgID] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_IOPCServer] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[EnumTypeValue]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[EnumTypeValue](
	[EnumTypeID] [uniqueidentifier] NOT NULL,
	[Ord] [int] NOT NULL,
	[Value] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_EnumTypeValue] PRIMARY KEY CLUSTERED 
(
	[EnumTypeID] ASC,
	[Ord] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[BusbarColoring]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[BusbarColoring](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[SclFullDocumentID] [uniqueidentifier] NOT NULL,
	[TriggeringTimeBuffer] [int] NOT NULL,
	[Unpowered] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Powered] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Feeder] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Earthed] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Uncertain] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Error] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Looped] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[EarthedThroughPTR] [bit] NULL,
	[DetectLoops] [bit] NULL,
	[GeneratorPriority] [int] NULL,
	[InFeederPriority] [int] NULL,
 CONSTRAINT [PK_BusbarColoringSettings] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[DataObject]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[DataObject](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[LogicalNodeTypeID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[TypeID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[AccessControl] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Transient] [bit] NOT NULL,
 CONSTRAINT [PK_DataObject] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[LogicalNode]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[LogicalNode](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[LogicalDeviceID] [uniqueidentifier] NULL,
	[AccessPointID] [uniqueidentifier] NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[InstanceID] [int] NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[LogicalNodeTypeID] [uniqueidentifier] NULL,
	[OrderIndex] [int] NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_LogicalNode] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Fcda]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Fcda](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[DataObjectTypeID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[FunctionalConstraint] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[TriggerOptions] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_Fcda] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Ied]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Ied](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[SclFullDocumentID] [uniqueidentifier] NULL,
	[AllocatedParentID] [uniqueidentifier] NULL,
	[Type] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Manufacturer] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ConfigurationVersion] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Services_NameLength] [int] NULL,
 CONSTRAINT [PK_Ied] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Header]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Header](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[SclFullDocumentID] [uniqueidentifier] NOT NULL,
	[ID] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Version] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Revision] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ToolID] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Header] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[InstanceDataSgValue]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[InstanceDataSgValue](
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](255) COLLATE Latin1_General_CS_AS NOT NULL,
	[SettingGroup] [int] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_InstanceDataSgValue] PRIMARY KEY CLUSTERED 
(
	[LogicalNodeID] ASC,
	[Path] ASC,
	[SettingGroup] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[IsPoweredRule]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[IsPoweredRule](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_IsPoweredRule] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[IsPoweredBasicRule]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[IsPoweredBasicRule](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[LNInst] [int] NULL,
	[DOName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[DAName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ValueIs] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ValueIsNot] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Epsilon] [float] NULL,
 CONSTRAINT [PK_IsPoweredBasicRule] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Input]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Input](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Input] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[GseControlBlock]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[GseControlBlock](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[DataSetID] [uniqueidentifier] NULL,
	[OrderIndex] [int] NOT NULL,
	[ConfigurationRevision] [bigint] NOT NULL,
	[Type] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ApplicationID] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Enabled] [bit] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[FixedOffs] [bit] NULL,
	[SecurityEnable] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Protocol] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_GseControlBlock] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[HistoryItem]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[HistoryItem](
	[HeaderID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[Version] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Revision] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[When] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Who] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[What] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Why] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_HistoryItem] PRIMARY KEY CLUSTERED 
(
	[HeaderID] ASC,
	[OrderIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[ExternalReference]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[ExternalReference](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[LNInst] [int] NULL,
	[DOName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[DAName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[IntAddr] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[ServiceType] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[SrcLDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[SrcPrefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[SrcLNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[SrcLNInst] [int] NULL,
	[SrcCBName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[TargetLogicalNodeID] [uniqueidentifier] NULL,
	[TargetPath] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_ExternalReference] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[DataSet]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[DataSet](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_DataSet] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Bay]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Bay](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[VoltageLevelID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_Bay] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[CommNodeRole]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[CommNodeRole](
	[CommNodeID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[Role] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Protocol] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Type] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Ncc] [bit] NULL,
	[Bay] [bit] NULL,
 CONSTRAINT [PK_CommNodeRole] PRIMARY KEY CLUSTERED 
(
	[CommNodeID] ASC,
	[OrderIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[AbstractDataAttribute]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[AbstractDataAttribute](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[FcdaID] [uniqueidentifier] NULL,
	[DataAttributeTypeID] [uniqueidentifier] NULL,
	[Discriminator] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[StructTypeID] [uniqueidentifier] NULL,
	[EnumTypeID] [uniqueidentifier] NULL,
	[BType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ShortAddress] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Value] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NULL,
	[ValKind] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Count] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ValImport] [bit] NULL,
 CONSTRAINT [PK_AbstractDataAttribute] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[AccessPoint]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[AccessPoint](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[Discriminator] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Router] [bit] NOT NULL,
	[Clock] [bit] NOT NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_AccessPoint] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[VoltageLevelColor]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[VoltageLevelColor](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[BusbarColoringID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[Color] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_VoltageLevelColor] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[TapChanger]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[TapChanger](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[TransformerWindingID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[EquipmentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[IsVirtual] [bit] NOT NULL,
	[RelativeSize] [real] NOT NULL,
 CONSTRAINT [PK_TapChanger] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SmvControlBlock]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SmvControlBlock](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[ConfigurationRevision] [bigint] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Multicast] [bit] NOT NULL,
	[DataSetID] [uniqueidentifier] NULL,
	[Reserve] [bit] NULL,
	[SmvID] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NoAsdu] [bigint] NOT NULL,
	[SmpMode] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[SmpRate] [int] NOT NULL,
	[OptFlds_ObjectID] [uniqueidentifier] NULL,
	[OptFlds_RefreshTime] [bit] NULL,
	[OptFlds_SampleRate] [bit] NULL,
	[OptFlds_Dataset] [bit] NULL,
	[OptFlds_Security] [bit] NULL,
	[OptFlds_SampleSynchronised] [bit] NULL,
	[OptFlds_DataRef] [bit] NULL,
	[SecurityEnable] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Protocol] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_SmvControlBlock] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SLD_PrecisionFor]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SLD_PrecisionFor](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[Unit] [nvarchar](50) COLLATE Finnish_Swedish_CI_AS NOT NULL,
	[Multiplier] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[Decimals] [smallint] NOT NULL,
 CONSTRAINT [PK_SLD_PrecisionFor] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[RcbTemplate]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[RcbTemplate](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[DataSetID] [uniqueidentifier] NULL,
	[OrderIndex] [int] NOT NULL,
	[IntegrityPeriod] [bigint] NOT NULL,
	[ReportIdentifier] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[ConfigurationRevision] [bigint] NOT NULL,
	[Buffered] [bit] NOT NULL,
	[BufferTime] [bigint] NOT NULL,
	[Indexed] [bit] NOT NULL,
	[TrgOp_ObjectID] [uniqueidentifier] NULL,
	[TrgOp_DataChange] [bit] NULL,
	[TrgOp_QualityChange] [bit] NULL,
	[TrgOp_DataUpdate] [bit] NULL,
	[TrgOp_Integrity] [bit] NULL,
	[TrgOp_GeneralInterrogation] [bit] NULL,
	[OptFlds_ObjectID] [uniqueidentifier] NULL,
	[OptFlds_SequenceNumber] [bit] NULL,
	[OptFlds_ReportTimeStamp] [bit] NULL,
	[OptFlds_DataSetName] [bit] NULL,
	[OptFlds_ReasonForInclusion] [bit] NULL,
	[OptFlds_DataReference] [bit] NULL,
	[OptFlds_EntryID] [bit] NULL,
	[OptFlds_ConfRevision] [bit] NULL,
	[OptFlds_BufferOverflow] [bit] NULL,
	[OptFlds_Segmentation] [bit] NULL,
	[RptEnabled_ObjectID] [uniqueidentifier] NULL,
	[RptEnabled_Description] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RptEnabled_MaxInstances] [int] NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_RcbTemplate] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[OPCServerReferencedIED]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[OPCServerReferencedIED](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[WebServerAddr] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_IOPCServerReferencedIED] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[SettingGroupControlBlock]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SettingGroupControlBlock](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[NumOfSgs] [int] NOT NULL,
	[ActSg] [int] NOT NULL,	
 CONSTRAINT [PK_SettingGroupControlBlock] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[LogControlBlock]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[LogControlBlock](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[DataSetID] [uniqueidentifier] NULL,
	[LogID] [uniqueidentifier] NULL,
	[OrderIndex] [int] NOT NULL,
	[IntegrityPeriod] [bigint] NOT NULL,
	[LogEnable] [bit] NOT NULL,
	[BufferTime] [bigint] NOT NULL,
	[TrgOp_ObjectID] [uniqueidentifier] NULL,
	[TrgOp_DataChange] [bit] NULL,
	[TrgOp_QualityChange] [bit] NULL,
	[TrgOp_DataUpdate] [bit] NULL,
	[TrgOp_Integrity] [bit] NULL,
	[TrgOp_GeneralInterrogation] [bit] NULL,
	[OptFlds_ObjectID] [uniqueidentifier] NULL,
	[OptFlds_ReasonForInclusion] [bit] NULL,
 CONSTRAINT [PK_LogControlBlock] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Log]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Log](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Line]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Line](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[TerminalID] [uniqueidentifier] NOT NULL,
	[StopAtPosX] [int] NULL,
	[StopAtPosY] [int] NULL,
	[StopAtDirection] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Line] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[ServerAt]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[ServerAt](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[AccessPointID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[RelatedAccessPointID] [uniqueidentifier] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ServerAt] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Server]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Server](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[AccessPointID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[Timeout] [bigint] NOT NULL,
	[Authentication_None] [bit] NOT NULL,
	[Authentication_Password] [bit] NOT NULL,
	[Authentication_Weak] [bit] NOT NULL,
	[Authentication_Strong] [bit] NOT NULL,
	[Authentication_Certificate] [bit] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Server] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[AbstractDataAttributeSgValue]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[AbstractDataAttributeSgValue](
	[AbstractDataAttributeID] [uniqueidentifier] NOT NULL,
	[SettingGroup] [int] NOT NULL,
	[Discriminator] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Value] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_AbstractDataAttributeSgValue] PRIMARY KEY CLUSTERED 
(
	[AbstractDataAttributeID] ASC,
	[SettingGroup] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[ClientLN]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[ClientLN](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[RcbTemplateID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[LogicalNodeID] [uniqueidentifier] NULL,
	[IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[AccessPointName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[LNInst] [int] NULL,
	[OrderIndex] [int] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ClientLN] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[ConnectivityNode]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[ConnectivityNode](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[BayID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[DisplayName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[NamePlacement] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[NormalColor] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_ConnectivityNode] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[ConnectedAccessPoint]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[ConnectedAccessPoint](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[AccessPointID] [uniqueidentifier] NOT NULL,
	[CommunicationSubNetworkID] [uniqueidentifier] NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[RedProt] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[ConnectionBusID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ConnectedAccessPoint] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[DataSetMemberRef]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[DataSetMemberRef](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[DataSetID] [uniqueidentifier] NOT NULL,
	[FunctionalConstraint] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[TargetLogicalNodeID] [uniqueidentifier] NOT NULL,
	[TargetPath] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_DataSetMemberRef] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[LogicalDevice]    Script Date: 06/13/2013 09:46:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[LogicalDevice](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ServerID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NULL,
	[Inst] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_LogicalDevice] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[ControlBlockAddress]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[ControlBlockAddress](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[AccessPointID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[ControlBlockID] [uniqueidentifier] NULL,
	[LogicalDeviceID] [uniqueidentifier] NULL,
	[MinTime] [bigint] NULL,
	[MaxTime] [bigint] NULL,
	[P_MacAddress] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[P_ApplicationID] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[P_VlanPriority] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[P_VlanID] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[ControlBlockAddressType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_ControlBlockAddress] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [IEC61850].[PhysicalConnection]    Script Date: 08/07/2015 11:06:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [IEC61850].[PhysicalConnection](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ConnectedAccessPointID] [uniqueidentifier] NOT NULL,
	[ConnectionBusID] [uniqueidentifier] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[ConnectionType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,	
 CONSTRAINT [PK_PhysicalConnection] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [IEC61850].[PhysicalConnectionParameter]    Script Date: 08/07/2015 11:06:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [IEC61850].[PhysicalConnectionParameter](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[PhysicalConnectionID] [uniqueidentifier] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Value] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,	
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_PhysicalConnectionParameter] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [IEC61850].[ConnectionBus]    Script Date: 08/07/2015 11:06:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [IEC61850].[ConnectionBus](
	[ObjectID] [uniqueidentifier] NOT NULL,	
	[Type] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,	
 CONSTRAINT [PK_ConnectionBus] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC	
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [IEC61850].[Busbar]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Busbar](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ConnectivityNodeID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Busbar] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[Association]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[Association](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ServerID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,
	[IedName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[LDInst] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Prefix] [nvarchar](11) COLLATE Latin1_General_CI_AS NULL,
	[LNClass] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[LNInst] [int] NULL,
	[AssociationKind] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[AssociationID] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL,
	[OrderIndex] [int] NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Association] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IEC61850].[AccessPointAddress]    Script Date: 06/13/2013 09:46:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[AccessPointAddress](
	[AccessPointID] [uniqueidentifier] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[Address] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Type] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[IedID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AccessPointAddress] PRIMARY KEY CLUSTERED 
(
	[AccessPointID] ASC,
	[OrderIndex] ASC,
	[IedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [FPN].[IedMapping]    Script Date: 10/20/2014 10:59:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [FPN].[IedMapping](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[PcmIedName] [nvarchar](255)  COLLATE Latin1_General_CI_AS NULL,
	[PcmIedID] [uniqueidentifier] NULL,
	[FpnIedName] [nvarchar](255)  COLLATE Latin1_General_CI_AS NULL,
	[FpnIedID] [uniqueidentifier] NULL,
	[Status] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL
 CONSTRAINT [PK_IedMapping] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [FPN].[IedMapping]  WITH CHECK ADD  CONSTRAINT [FK_IedMapping_Ied] FOREIGN KEY([FpnIedID])
REFERENCES [IEC61850].[Ied] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [FPN].[IedMapping] CHECK CONSTRAINT [FK_IedMapping_Ied]
GO

/****** Object:  Table [FPN].[DaMapping]    Script Date: 10/20/2014 10:57:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [FPN].[DaMapping](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[IedMappingId] [uniqueidentifier] NOT NULL,
	[PcmIedName] [nvarchar](255)  COLLATE Latin1_General_CI_AS NULL,	
	[PcmLdInst] [nvarchar](255)  COLLATE Latin1_General_CI_AS NULL,
	[PcmLnId] [uniqueidentifier] NULL,
	[PcmLnClass] [nvarchar](4)  COLLATE Latin1_General_CI_AS NULL,
	[PcmLnPrefix] [nvarchar](11)  COLLATE Latin1_General_CI_AS NULL,
	[PcmLnInst] [int] NULL,
	[PcmDoPath] [nvarchar](255)  COLLATE Latin1_General_CS_AS NULL,
	[PcmDaPath] [nvarchar](255)  COLLATE Latin1_General_CS_AS NULL,
	[FpnIedName] [nvarchar](255)  COLLATE Latin1_General_CI_AS NULL,	
	[FpnLdInst] [nvarchar](255)  COLLATE Latin1_General_CI_AS NULL,
	[FpnLnId] [uniqueidentifier] NULL,
	[FpnLnClass] [nvarchar](4)  COLLATE Latin1_General_CI_AS NULL,
	[FpnLnPrefix] [nvarchar](11)  COLLATE Latin1_General_CI_AS NULL,
	[FpnLnInst] [int] NULL,
	[FpnDoPath] [nvarchar](255)  COLLATE Latin1_General_CS_AS NULL,
	[FpnDaPath] [nvarchar](255)  COLLATE Latin1_General_CS_AS NULL,	
 CONSTRAINT [PK_DaMapping] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [FPN].[DaMapping]  WITH CHECK ADD  CONSTRAINT [FK_DaMapping_IedMapping] FOREIGN KEY([IedMappingId])
REFERENCES [FPN].[IedMapping] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE 
GO

ALTER TABLE [FPN].[DaMapping] CHECK CONSTRAINT [FK_DaMapping_IedMapping]
GO

/****** Object:  Table [FPN].[ExcludedDa]    Script Date: 12/18/2014 13:58:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [FPN].[ExcludedDa](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[FpnIedID] [uniqueidentifier] NULL,
	[FpnIedName] [nvarchar](255)  COLLATE Latin1_General_CI_AS NOT NULL,
	[FpnLdInst] [nvarchar](255)  COLLATE Latin1_General_CI_AS NULL,
	[FpnLnID] [uniqueidentifier] NULL,
	[FpnLnPrefix] [nvarchar](11)   COLLATE Latin1_General_CI_AS NULL,
	[FpnLnClass] [nvarchar](4)  COLLATE Latin1_General_CI_AS NULL,
	[FpnLnInst] [int] NULL,
	[FpnDoPath] [nvarchar](255)  COLLATE Latin1_General_CS_AS NULL,
	[FpnDaPath] [nvarchar](255)  COLLATE Latin1_General_CS_AS NULL,
 CONSTRAINT [PK_ExcludedDa] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [FPN].[MappingStatus]    Script Date: 12/29/2014 14:42:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [FPN].[MappingStatus](
	[IedID] [uniqueidentifier] NOT NULL,
	[LnID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MappingStatus_1] PRIMARY KEY CLUSTERED 
(
	[IedID] ASC,
	[LnID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [IEC61850].[SubEquipment] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IEC61850].[SubEquipment](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[ParentID] [uniqueidentifier] NOT NULL,
	[ParentType] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Description] [nvarchar](4000) COLLATE Latin1_General_CI_AS NULL,	
	[OrderIndex] [int] NOT NULL,	
	[IsVirtual] [bit] NOT NULL,
	[Phase] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,	
 CONSTRAINT [PK_SubEquipment] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [IEC61850].[MustUnderstandElement]    */
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [IEC61850].[UnsupportedMustUnderstandElement](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[IedID] [uniqueidentifier] NULL,
	[ParentID] [uniqueidentifier] NOT NULL,	
	[OrderIndex] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[ElementToken] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UnsupportedMustUnderstandElement] PRIMARY KEY CLUSTERED 
(	
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [IEC61850].[UnsupportedMustUnderstandElementForInstanceData]    */
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [IEC61850].[UnsupportedMustUnderstandElementForInstanceData](
	[ObjectID] [uniqueidentifier] NOT NULL,
	[IedID] [uniqueidentifier] NULL,
	[LogicalNodeID] [uniqueidentifier] NOT NULL,	
	[OrderIndex] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[ElementToken] [nvarchar](max) NOT NULL,
	[Path] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_UnsupportedMustUnderstandElementForInstanceData] PRIMARY KEY CLUSTERED 
(	
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Default [DF_AbstractDataAttribute_FcdaID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute] ADD  CONSTRAINT [DF_AbstractDataAttribute_FcdaID]  DEFAULT (NULL) FOR [FcdaID]
GO
/****** Object:  Default [DF_AbstractDataAttribute_DataAttributeTypeID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute] ADD  CONSTRAINT [DF_AbstractDataAttribute_DataAttributeTypeID]  DEFAULT (NULL) FOR [DataAttributeTypeID]
GO
/****** Object:  Default [DF_AbstractDataAttribute_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute] ADD  CONSTRAINT [DF_AbstractDataAttribute_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_AbstractDataAttribute_StructTypeID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute] ADD  CONSTRAINT [DF_AbstractDataAttribute_StructTypeID]  DEFAULT (NULL) FOR [StructTypeID]
GO
/****** Object:  Default [DF_AbstractDataAttribute_EnumTypeID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute] ADD  CONSTRAINT [DF_AbstractDataAttribute_EnumTypeID]  DEFAULT (NULL) FOR [EnumTypeID]
GO
/****** Object:  Default [DF_AbstractDataAttribute_ShortAddress]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute] ADD  CONSTRAINT [DF_AbstractDataAttribute_ShortAddress]  DEFAULT (NULL) FOR [ShortAddress]
GO
/****** Object:  Default [DF_AbstractDataAttribute_Value]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute] ADD  CONSTRAINT [DF_AbstractDataAttribute_Value]  DEFAULT (NULL) FOR [Value]
GO
/****** Object:  Default [DF_AbstractDataAttribute_OrderIndex]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute] ADD  CONSTRAINT [DF_AbstractDataAttribute_OrderIndex]  DEFAULT (NULL) FOR [OrderIndex]
GO
/****** Object:  Default [DF_AbstractDataAttribute_ValKind]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute] ADD  CONSTRAINT [DF_AbstractDataAttribute_ValKind]  DEFAULT (NULL) FOR [ValKind]
GO
/****** Object:  Default [DF_AccessPoint_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AccessPoint] ADD  CONSTRAINT [DF_AccessPoint_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_AccessPoint_Router]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AccessPoint] ADD  CONSTRAINT [DF_AccessPoint_Router]  DEFAULT ((0)) FOR [Router]
GO
/****** Object:  Default [DF_AccessPoint_Clock]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AccessPoint] ADD  CONSTRAINT [DF_AccessPoint_Clock]  DEFAULT ((0)) FOR [Clock]
GO
/****** Object:  Default [DF_Association_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Association] ADD  CONSTRAINT [DF_Association_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_Association_Prefix]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Association] ADD  CONSTRAINT [DF_Association_Prefix]  DEFAULT (NULL) FOR [Prefix]
GO
/****** Object:  Default [DF_Association_LNInst]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Association] ADD  CONSTRAINT [DF_Association_LNInst]  DEFAULT (NULL) FOR [LNInst]
GO
/****** Object:  Default [DF_Association_AssociationID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Association] ADD  CONSTRAINT [DF_Association_AssociationID]  DEFAULT (NULL) FOR [AssociationID]
GO
/****** Object:  Default [DF_Bay_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Bay] ADD  CONSTRAINT [DF_Bay_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_ClientLN_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ClientLN] ADD  CONSTRAINT [DF_ClientLN_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_ClientLN_LogicalNodeID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ClientLN] ADD  CONSTRAINT [DF_ClientLN_LogicalNodeID]  DEFAULT (NULL) FOR [LogicalNodeID]
GO
/****** Object:  Default [DF_ClientLN_IedName]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ClientLN] ADD  CONSTRAINT [DF_ClientLN_IedName]  DEFAULT (NULL) FOR [IedName]
GO
/****** Object:  Default [DF_ClientLN_AccessPointName]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ClientLN] ADD  CONSTRAINT [DF_ClientLN_AccessPointName]  DEFAULT (NULL) FOR [AccessPointName]
GO
/****** Object:  Default [DF_ClientLN_LDInst]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ClientLN] ADD  CONSTRAINT [DF_ClientLN_LDInst]  DEFAULT (NULL) FOR [LDInst]
GO
/****** Object:  Default [DF_ClientLN_Prefix]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ClientLN] ADD  CONSTRAINT [DF_ClientLN_Prefix]  DEFAULT (NULL) FOR [Prefix]
GO
/****** Object:  Default [DF_ClientLN_LNClass]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ClientLN] ADD  CONSTRAINT [DF_ClientLN_LNClass]  DEFAULT (NULL) FOR [LNClass]
GO
/****** Object:  Default [DF_ClientLN_LNInst]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ClientLN] ADD  CONSTRAINT [DF_ClientLN_LNInst]  DEFAULT (NULL) FOR [LNInst]
GO
/****** Object:  Default [DF_CommNodeRole_Protocol]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[CommNodeRole] ADD  CONSTRAINT [DF_CommNodeRole_Protocol]  DEFAULT (NULL) FOR [Protocol]
GO
/****** Object:  Default [DF_CommNodeRole_Type]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[CommNodeRole] ADD  CONSTRAINT [DF_CommNodeRole_Type]  DEFAULT (NULL) FOR [Type]
GO
/****** Object:  Default [DF_CommNodeRole_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[CommNodeRole] ADD  CONSTRAINT [DF_CommNodeRole_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_CommNodeRole_Ncc]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[CommNodeRole] ADD  CONSTRAINT [DF_CommNodeRole_Ncc]  DEFAULT (NULL) FOR [Ncc]
GO
/****** Object:  Default [DF_CommNodeRole_Bay]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[CommNodeRole] ADD  CONSTRAINT [DF_CommNodeRole_Bay]  DEFAULT (NULL) FOR [Bay]
GO
/****** Object:  Default [DF_CommunicationSubNetwork_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[CommunicationSubNetwork] ADD  CONSTRAINT [DF_CommunicationSubNetwork_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_CommunicationSubNetwork_ProtocolType]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[CommunicationSubNetwork] ADD  CONSTRAINT [DF_CommunicationSubNetwork_ProtocolType]  DEFAULT (NULL) FOR [ProtocolType]
GO
/****** Object:  Default [DF_CommunicationSubNetwork_BitRate]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[CommunicationSubNetwork] ADD  CONSTRAINT [DF_CommunicationSubNetwork_BitRate]  DEFAULT (NULL) FOR [BitRate]
GO
/****** Object:  Default [DF_CommunicationSubNetwork_SclFullDocumentID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[CommunicationSubNetwork] ADD  CONSTRAINT [DF_CommunicationSubNetwork_SclFullDocumentID]  DEFAULT (NULL) FOR [SclFullDocumentID]
GO
/****** Object:  Default [DF_ConductingEquipment_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_ConductingEquipment_DisplayName]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_DisplayName]  DEFAULT ('Unspecified') FOR [DisplayName]
GO
/****** Object:  Default [DF_ConductingEquipment_IsVirtual]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_IsVirtual]  DEFAULT ('False') FOR [IsVirtual]
GO
/****** Object:  Default [DF_ConductingEquipment_NamePlacement]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_NamePlacement]  DEFAULT (NULL) FOR [NamePlacement]
GO
/****** Object:  Default [DF_ConductingEquipment_NormalColor]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_NormalColor]  DEFAULT (NULL) FOR [NormalColor]
GO
/****** Object:  Default [DF_ConductingEquipment_RelativeSize]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_RelativeSize]  DEFAULT ((1.0)) FOR [RelativeSize]
GO
/****** Object:  Default [DF_ConductingEquipment_ShowAlarmSymbol]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_ShowAlarmSymbol]  DEFAULT ('Unspecified') FOR [ShowAlarmSymbol]
GO
/****** Object:  Default [DF_ConductingEquipment_ShowNonGoodQualitySymbol]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_ShowNonGoodQualitySymbol]  DEFAULT ('Unspecified') FOR [ShowNonGoodQualitySymbol]
GO
/****** Object:  Default [DF_ConductingEquipment_DisplaySymbol]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_DisplaySymbol]  DEFAULT (NULL) FOR [DisplaySymbol]
GO
/****** Object:  Default [DF_ConductingEquipment_FeederType]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_FeederType]  DEFAULT (NULL) FOR [FeederType]
GO
/****** Object:  Default [DF_ConductingEquipment_EarthCoordinatesPosX]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_EarthCoordinatesPosX]  DEFAULT (NULL) FOR [EarthCoordinatesPosX]
GO
/****** Object:  Default [DF_ConductingEquipment_EarthCoordinatesPosY]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_EarthCoordinatesPosY]  DEFAULT (NULL) FOR [EarthCoordinatesPosY]
GO
/****** Object:  Default [DF_ConductingEquipment_EarthDirection]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_EarthDirection]  DEFAULT (NULL) FOR [EarthDirection]
GO
/****** Object:  Default [DF_ConductingEquipment_EarthViaCoordinatesPosX]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_EarthViaCoordinatesPosX]  DEFAULT (NULL) FOR [EarthViaCoordinatesPosX]
GO
/****** Object:  Default [DF_ConductingEquipment_EarthViaCoordinatesPosY]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_EarthViaCoordinatesPosY]  DEFAULT (NULL) FOR [EarthViaCoordinatesPosY]
GO
/****** Object:  Default [DF_ConductingEquipment_MasterID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConductingEquipment] ADD  CONSTRAINT [DF_ConductingEquipment_MasterID]  DEFAULT (NULL) FOR [MasterID]
GO
/****** Object:  Default [DF_ConnectedAccessPoint_CommunicationSubNetworkID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConnectedAccessPoint] ADD  CONSTRAINT [DF_ConnectedAccessPoint_CommunicationSubNetworkID]  DEFAULT (NULL) FOR [CommunicationSubNetworkID]
GO
/****** Object:  Default [DF_ConnectedAccessPoint_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConnectedAccessPoint] ADD  CONSTRAINT [DF_ConnectedAccessPoint_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_ConnectivityNode_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConnectivityNode] ADD  CONSTRAINT [DF_ConnectivityNode_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_ConnectivityNode_NamePlacement]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConnectivityNode] ADD  CONSTRAINT [DF_ConnectivityNode_NamePlacement]  DEFAULT (NULL) FOR [NamePlacement]
GO
/****** Object:  Default [DF_ConnectivityNode_NormalColor]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConnectivityNode] ADD  CONSTRAINT [DF_ConnectivityNode_NormalColor]  DEFAULT (NULL) FOR [NormalColor]
GO
/****** Object:  Default [DF_ControlBlockAddress_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ControlBlockAddress] ADD  CONSTRAINT [DF_ControlBlockAddress_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_ControlBlockAddress_ControlBlockID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ControlBlockAddress] ADD  CONSTRAINT [DF_ControlBlockAddress_ControlBlockID]  DEFAULT (NULL) FOR [ControlBlockID]
GO
/****** Object:  Default [DF_ControlBlockAddress_LogicalDeviceID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ControlBlockAddress] ADD  CONSTRAINT [DF_ControlBlockAddress_LogicalDeviceID]  DEFAULT (NULL) FOR [LogicalDeviceID]
GO
/****** Object:  Default [DF_ControlBlockAddress_MinTime]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ControlBlockAddress] ADD  CONSTRAINT [DF_ControlBlockAddress_MinTime]  DEFAULT (NULL) FOR [MinTime]
GO
/****** Object:  Default [DF_ControlBlockAddress_MaxTime]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ControlBlockAddress] ADD  CONSTRAINT [DF_ControlBlockAddress_MaxTime]  DEFAULT (NULL) FOR [MaxTime]
GO
/****** Object:  Default [DF_ControlBlockAddress_P_MacAddress]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ControlBlockAddress] ADD  CONSTRAINT [DF_ControlBlockAddress_P_MacAddress]  DEFAULT (NULL) FOR [P_MacAddress]
GO
/****** Object:  Default [DF_ControlBlockAddress_P_ApplicationID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ControlBlockAddress] ADD  CONSTRAINT [DF_ControlBlockAddress_P_ApplicationID]  DEFAULT (NULL) FOR [P_ApplicationID]
GO
/****** Object:  Default [DF_ControlBlockAddress_P_VlanPriority]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ControlBlockAddress] ADD  CONSTRAINT [DF_ControlBlockAddress_P_VlanPriority]  DEFAULT (NULL) FOR [P_VlanPriority]
GO
/****** Object:  Default [DF_ControlBlockAddress_P_VlanID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ControlBlockAddress] ADD  CONSTRAINT [DF_ControlBlockAddress_P_VlanID]  DEFAULT (NULL) FOR [P_VlanID]
GO
/****** Object:  Default [DF_DataAttributeType_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataAttributeType] ADD  CONSTRAINT [DF_DataAttributeType_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_DataAttributeType_IedType]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataAttributeType] ADD  CONSTRAINT [DF_DataAttributeType_IedType]  DEFAULT (NULL) FOR [IedType]
GO
/****** Object:  Default [DF_DataAttributeType_SclFullDocumentID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataAttributeType] ADD  CONSTRAINT [DF_DataAttributeType_SclFullDocumentID]  DEFAULT (NULL) FOR [SclFullDocumentID]
GO
/****** Object:  Default [DF_DataObject_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataObject] ADD  CONSTRAINT [DF_DataObject_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_DataObject_AccessControl]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataObject] ADD  CONSTRAINT [DF_DataObject_AccessControl]  DEFAULT (NULL) FOR [AccessControl]
GO
/****** Object:  Default [DF_DataObjectType_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataObjectType] ADD  CONSTRAINT [DF_DataObjectType_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_DataObjectType_IedType]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataObjectType] ADD  CONSTRAINT [DF_DataObjectType_IedType]  DEFAULT (NULL) FOR [IedType]
GO
/****** Object:  Default [DF_DataObjectType_SclFullDocumentID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataObjectType] ADD  CONSTRAINT [DF_DataObjectType_SclFullDocumentID]  DEFAULT (NULL) FOR [SclFullDocumentID]
GO
/****** Object:  Default [DF_DataSet_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataSet] ADD  CONSTRAINT [DF_DataSet_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_DataSetMemberRef_FunctionalConstraint]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataSetMemberRef] ADD  CONSTRAINT [DF_DataSetMemberRef_FunctionalConstraint]  DEFAULT (NULL) FOR [FunctionalConstraint]
GO
/****** Object:  Default [DF_EnumType_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[EnumType] ADD  CONSTRAINT [DF_EnumType_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_EnumType_SclFullDocumentID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[EnumType] ADD  CONSTRAINT [DF_EnumType_SclFullDocumentID]  DEFAULT (NULL) FOR [SclFullDocumentID]
GO
/****** Object:  Default [DF_ExternalReference_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_ExternalReference_IedName]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_IedName]  DEFAULT (NULL) FOR [IedName]
GO
/****** Object:  Default [DF_ExternalReference_LDInst]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_LDInst]  DEFAULT (NULL) FOR [LDInst]
GO
/****** Object:  Default [DF_ExternalReference_Prefix]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_Prefix]  DEFAULT (NULL) FOR [Prefix]
GO
/****** Object:  Default [DF_ExternalReference_LNClass]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_LNClass]  DEFAULT (NULL) FOR [LNClass]
GO
/****** Object:  Default [DF_ExternalReference_LNInst]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_LNInst]  DEFAULT (NULL) FOR [LNInst]
GO
/****** Object:  Default [DF_ExternalReference_DOName]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_DOName]  DEFAULT (NULL) FOR [DOName]
GO
/****** Object:  Default [DF_ExternalReference_DAName]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_DAName]  DEFAULT (NULL) FOR [DAName]
GO
/****** Object:  Default [DF_ExternalReference_IntAddr]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_IntAddr]  DEFAULT (NULL) FOR [IntAddr]
GO
/****** Object:  Default [DF_ExternalReference_ServiceType]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_ServiceType]  DEFAULT (NULL) FOR [ServiceType]
GO
/****** Object:  Default [DF_ExternalReference_SrcLDInst]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_SrcLDInst]  DEFAULT (NULL) FOR [SrcLDInst]
GO
/****** Object:  Default [DF_ExternalReference_SrcPrefix]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_SrcPrefix]  DEFAULT (NULL) FOR [SrcPrefix]
GO
/****** Object:  Default [DF_ExternalReference_SrcLNClass]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_SrcLNClass]  DEFAULT (NULL) FOR [SrcLNClass]
GO
/****** Object:  Default [DF_ExternalReference_SrcLNInst]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_SrcLNInst]  DEFAULT (NULL) FOR [SrcLNInst]
GO
/****** Object:  Default [DF_ExternalReference_SrcCBName]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_SrcCBName]  DEFAULT (NULL) FOR [SrcCBName]
GO
/****** Object:  Default [DF_ExternalReference_TargetLogicalNodeID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_TargetLogicalNodeID]  DEFAULT (NULL) FOR [TargetLogicalNodeID]
GO
/****** Object:  Default [DF_ExternalReference_TargetPath]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference] ADD  CONSTRAINT [DF_ExternalReference_TargetPath]  DEFAULT (NULL) FOR [TargetPath]
GO
/****** Object:  Default [DF_Fcda_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Fcda] ADD  CONSTRAINT [DF_Fcda_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_Function_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Function] ADD  CONSTRAINT [DF_Function_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_Function_Type]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Function] ADD  CONSTRAINT [DF_Function_Type]  DEFAULT (NULL) FOR [Type]
GO
/****** Object:  Default [DF_GeneralEquipment_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GeneralEquipment] ADD  CONSTRAINT [DF_GeneralEquipment_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_GeneralEquipment_DisplayName]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GeneralEquipment] ADD  CONSTRAINT [DF_GeneralEquipment_DisplayName]  DEFAULT ('Unspecified') FOR [DisplayName]
GO
/****** Object:  Default [DF_GeneralEquipment_IsVirtual]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GeneralEquipment] ADD  CONSTRAINT [DF_GeneralEquipment_IsVirtual]  DEFAULT ('False') FOR [IsVirtual]
GO
/****** Object:  Default [DF_GeneralEquipment_NamePlacement]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GeneralEquipment] ADD  CONSTRAINT [DF_GeneralEquipment_NamePlacement]  DEFAULT (NULL) FOR [NamePlacement]
GO
/****** Object:  Default [DF_GeneralEquipment_NormalColor]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GeneralEquipment] ADD  CONSTRAINT [DF_GeneralEquipment_NormalColor]  DEFAULT (NULL) FOR [NormalColor]
GO
/****** Object:  Default [DF_GeneralEquipment_RelativeSize]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GeneralEquipment] ADD  CONSTRAINT [DF_GeneralEquipment_RelativeSize]  DEFAULT ((1.0)) FOR [RelativeSize]
GO
/****** Object:  Default [DF_GeneralEquipment_ShowAlarmSymbol]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GeneralEquipment] ADD  CONSTRAINT [DF_GeneralEquipment_ShowAlarmSymbol]  DEFAULT ('Unspecified') FOR [ShowAlarmSymbol]
GO
/****** Object:  Default [DF_GeneralEquipment_ShowNonGoodQualitySymbol]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GeneralEquipment] ADD  CONSTRAINT [DF_GeneralEquipment_ShowNonGoodQualitySymbol]  DEFAULT ('Unspecified') FOR [ShowNonGoodQualitySymbol]
GO
/****** Object:  Default [DF_GseControlBlock_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GseControlBlock] ADD  CONSTRAINT [DF_GseControlBlock_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_GseControlBlock_DataSetID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GseControlBlock] ADD  CONSTRAINT [DF_GseControlBlock_DataSetID]  DEFAULT (NULL) FOR [DataSetID]
GO
/****** Object:  Default [DF_GseControlBlock_FixedOffs]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GseControlBlock] ADD  CONSTRAINT [DF_GseControlBlock_FixedOffs]  DEFAULT (NULL) FOR [FixedOffs]
GO
/****** Object:  Default [DF_GseControlBlock_SecurityEnable]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GseControlBlock] ADD  CONSTRAINT [DF_GseControlBlock_SecurityEnable]  DEFAULT (NULL) FOR [SecurityEnable]
GO
/****** Object:  Default [DF_GseControlBlock_Protocol]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GseControlBlock] ADD  CONSTRAINT [DF_GseControlBlock_Protocol]  DEFAULT (NULL) FOR [Protocol]
GO
/****** Object:  Default [DF_Header_Version]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Header] ADD  CONSTRAINT [DF_Header_Version]  DEFAULT (NULL) FOR [Version]
GO
/****** Object:  Default [DF_Header_Revision]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Header] ADD  CONSTRAINT [DF_Header_Revision]  DEFAULT (NULL) FOR [Revision]
GO
/****** Object:  Default [DF_Header_ToolID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Header] ADD  CONSTRAINT [DF_Header_ToolID]  DEFAULT (NULL) FOR [ToolID]
GO
/****** Object:  Default [DF_HistoryItem_Who]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[HistoryItem] ADD  CONSTRAINT [DF_HistoryItem_Who]  DEFAULT (NULL) FOR [Who]
GO
/****** Object:  Default [DF_HistoryItem_What]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[HistoryItem] ADD  CONSTRAINT [DF_HistoryItem_What]  DEFAULT (NULL) FOR [What]
GO
/****** Object:  Default [DF_HistoryItem_Why]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[HistoryItem] ADD  CONSTRAINT [DF_HistoryItem_Why]  DEFAULT (NULL) FOR [Why]
GO
/****** Object:  Default [DF_Ied_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Ied] ADD  CONSTRAINT [DF_Ied_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_Ied_SclFullDocumentID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Ied] ADD  CONSTRAINT [DF_Ied_SclFullDocumentID]  DEFAULT (NULL) FOR [SclFullDocumentID]
GO
/****** Object:  Default [DF_Ied_AllocatedParentID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Ied] ADD  CONSTRAINT [DF_Ied_AllocatedParentID]  DEFAULT (NULL) FOR [AllocatedParentID]
GO
/****** Object:  Default [DF_Ied_Type]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Ied] ADD  CONSTRAINT [DF_Ied_Type]  DEFAULT (NULL) FOR [Type]
GO
/****** Object:  Default [DF_Ied_Manufacturer]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Ied] ADD  CONSTRAINT [DF_Ied_Manufacturer]  DEFAULT (NULL) FOR [Manufacturer]
GO
/****** Object:  Default [DF_Ied_ConfigurationVersion]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Ied] ADD  CONSTRAINT [DF_Ied_ConfigurationVersion]  DEFAULT (NULL) FOR [ConfigurationVersion]
GO
/****** Object:  Default [DF_IedClient_TargetIedID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[IedClient] ADD  CONSTRAINT [DF_IedClient_TargetIedID]  DEFAULT (NULL) FOR [TargetIedID]
GO
/****** Object:  Default [DF_IedClient_IedName]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[IedClient] ADD  CONSTRAINT [DF_IedClient_IedName]  DEFAULT (NULL) FOR [IedName]
GO
/****** Object:  Default [DF_IedClient_AccessPointName]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[IedClient] ADD  CONSTRAINT [DF_IedClient_AccessPointName]  DEFAULT (NULL) FOR [AccessPointName]
GO
/****** Object:  Default [DF_IedClient_LDInst]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[IedClient] ADD  CONSTRAINT [DF_IedClient_LDInst]  DEFAULT (NULL) FOR [LDInst]
GO
/****** Object:  Default [DF_IedClient_Prefix]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[IedClient] ADD  CONSTRAINT [DF_IedClient_Prefix]  DEFAULT (NULL) FOR [Prefix]
GO
/****** Object:  Default [DF_IedClient_LNClass]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[IedClient] ADD  CONSTRAINT [DF_IedClient_LNClass]  DEFAULT (NULL) FOR [LNClass]
GO
/****** Object:  Default [DF_IedClient_LNInst]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[IedClient] ADD  CONSTRAINT [DF_IedClient_LNInst]  DEFAULT (NULL) FOR [LNInst]
GO
ALTER TABLE [FPN].[IedMapping] ADD  CONSTRAINT [DF_IedMapping_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_Input_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Input] ADD  CONSTRAINT [DF_Input_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_InstanceData_Description]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[InstanceData] ADD  CONSTRAINT [DF_InstanceData_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_InstanceData_Index]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[InstanceData] ADD  CONSTRAINT [DF_InstanceData_Index]  DEFAULT (NULL) FOR [Index]
GO
/****** Object:  Default [DF_InstanceData_AccessControl]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[InstanceData] ADD  CONSTRAINT [DF_InstanceData_AccessControl]  DEFAULT (NULL) FOR [AccessControl]
GO
/****** Object:  Default [DF_InstanceData_ShortAddress]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[InstanceData] ADD  CONSTRAINT [DF_InstanceData_ShortAddress]  DEFAULT (NULL) FOR [ShortAddress]
GO
/****** Object:  Default [DF_InstanceData_Value]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[InstanceData] ADD  CONSTRAINT [DF_InstanceData_Value]  DEFAULT (NULL) FOR [Value]
GO
/****** Object:  Default [DF_InstanceData_ValKind]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[InstanceData] ADD  CONSTRAINT [DF_InstanceData_ValKind]  DEFAULT (NULL) FOR [ValKind]
GO
/****** Object:  Default [DF_Line_StopAtPosX]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Line] ADD  CONSTRAINT [DF_Line_StopAtPosX]  DEFAULT (NULL) FOR [StopAtPosX]
GO
/****** Object:  Default [DF_Line_StopAtPosY]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Line] ADD  CONSTRAINT [DF_Line_StopAtPosY]  DEFAULT (NULL) FOR [StopAtPosY]
GO
/****** Object:  Default [DF_Line_StopAtDirection]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Line] ADD  CONSTRAINT [DF_Line_StopAtDirection]  DEFAULT (NULL) FOR [StopAtDirection]
GO
/****** Object:  Default [DF_LNode_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LNode] ADD  CONSTRAINT [DF_LNode_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_LNode_LogicalNodeID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LNode] ADD  CONSTRAINT [DF_LNode_LogicalNodeID]  DEFAULT (NULL) FOR [LogicalNodeID]
GO
/****** Object:  Default [DF_LNode_IedName]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LNode] ADD  CONSTRAINT [DF_LNode_IedName]  DEFAULT (NULL) FOR [IedName]
GO
/****** Object:  Default [DF_LNode_LDInst]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LNode] ADD  CONSTRAINT [DF_LNode_LDInst]  DEFAULT (NULL) FOR [LDInst]
GO
/****** Object:  Default [DF_LNode_Prefix]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LNode] ADD  CONSTRAINT [DF_LNode_Prefix]  DEFAULT (NULL) FOR [Prefix]
GO
/****** Object:  Default [DF_LNode_LNClass]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LNode] ADD  CONSTRAINT [DF_LNode_LNClass]  DEFAULT (NULL) FOR [LNClass]
GO
/****** Object:  Default [DF_LNode_LNInst]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LNode] ADD  CONSTRAINT [DF_LNode_LNInst]  DEFAULT (NULL) FOR [LNInst]
GO
/****** Object:  Default [DF_Log_Name]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Log] ADD  CONSTRAINT [DF_Log_Name]  DEFAULT (NULL) FOR [Name]
GO
/****** Object:  Default [DF_Log_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Log] ADD  CONSTRAINT [DF_Log_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_LogControlBlock_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock] ADD  CONSTRAINT [DF_LogControlBlock_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_LogControlBlock_DataSetID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock] ADD  CONSTRAINT [DF_LogControlBlock_DataSetID]  DEFAULT (NULL) FOR [DataSetID]
GO
/****** Object:  Default [DF_LogControlBlock_LogID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock] ADD  CONSTRAINT [DF_LogControlBlock_LogID]  DEFAULT (NULL) FOR [LogID]
GO
/****** Object:  Default [DF_LogControlBlock_TrgOp_ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock] ADD  CONSTRAINT [DF_LogControlBlock_TrgOp_ObjectID]  DEFAULT (NULL) FOR [TrgOp_ObjectID]
GO
/****** Object:  Default [DF_LogControlBlock_TrgOp_DataChange]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock] ADD  CONSTRAINT [DF_LogControlBlock_TrgOp_DataChange]  DEFAULT (NULL) FOR [TrgOp_DataChange]
GO
/****** Object:  Default [DF_LogControlBlock_TrgOp_QualityChange]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock] ADD  CONSTRAINT [DF_LogControlBlock_TrgOp_QualityChange]  DEFAULT (NULL) FOR [TrgOp_QualityChange]
GO
/****** Object:  Default [DF_LogControlBlock_TrgOp_DataUpdate]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock] ADD  CONSTRAINT [DF_LogControlBlock_TrgOp_DataUpdate]  DEFAULT (NULL) FOR [TrgOp_DataUpdate]
GO
/****** Object:  Default [DF_LogControlBlock_TrgOp_Integrity]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock] ADD  CONSTRAINT [DF_LogControlBlock_TrgOp_Integrity]  DEFAULT (NULL) FOR [TrgOp_Integrity]
GO
/****** Object:  Default [DF_LogControlBlock_TrgOp_GeneralInterrogation]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock] ADD  CONSTRAINT [DF_LogControlBlock_TrgOp_GeneralInterrogation]  DEFAULT (NULL) FOR [TrgOp_GeneralInterrogation]
GO
/****** Object:  Default [DF_LogControlBlock_OptFlds_ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock] ADD  CONSTRAINT [DF_LogControlBlock_OptFlds_ObjectID]  DEFAULT (NULL) FOR [OptFlds_ObjectID]
GO
/****** Object:  Default [DF_LogControlBlock_OptFlds_ReasonForInclusion]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock] ADD  CONSTRAINT [DF_LogControlBlock_OptFlds_ReasonForInclusion]  DEFAULT (NULL) FOR [OptFlds_ReasonForInclusion]
GO
/****** Object:  Default [DF_LogicalDevice_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalDevice] ADD  CONSTRAINT [DF_LogicalDevice_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_LogicalNode_LogicalDeviceID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalNode] ADD  CONSTRAINT [DF_LogicalNode_LogicalDeviceID]  DEFAULT (NULL) FOR [LogicalDeviceID]
GO
/****** Object:  Default [DF_LogicalNode_AccessPointID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalNode] ADD  CONSTRAINT [DF_LogicalNode_AccessPointID]  DEFAULT (NULL) FOR [AccessPointID]
GO
/****** Object:  Default [DF_LogicalNode_Prefix]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalNode] ADD  CONSTRAINT [DF_LogicalNode_Prefix]  DEFAULT (NULL) FOR [Prefix]
GO
/****** Object:  Default [DF_LogicalNode_InstanceID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalNode] ADD  CONSTRAINT [DF_LogicalNode_InstanceID]  DEFAULT (NULL) FOR [InstanceID]
GO
/****** Object:  Default [DF_LogicalNode_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalNode] ADD  CONSTRAINT [DF_LogicalNode_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_LogicalNode_LogicalNodeTypeID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalNode] ADD  CONSTRAINT [DF_LogicalNode_LogicalNodeTypeID]  DEFAULT (NULL) FOR [LogicalNodeTypeID]
GO
/****** Object:  Default [DF_LogicalNodeType_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalNodeType] ADD  CONSTRAINT [DF_LogicalNodeType_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_LogicalNodeType_IedType]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalNodeType] ADD  CONSTRAINT [DF_LogicalNodeType_IedType]  DEFAULT (NULL) FOR [IedType]
GO
/****** Object:  Default [DF_LogicalNodeType_SclFullDocumentID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalNodeType] ADD  CONSTRAINT [DF_LogicalNodeType_SclFullDocumentID]  DEFAULT (NULL) FOR [SclFullDocumentID]
GO

/****** Object:  Default [DF_PlacedElement_RelativePosX]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PlacedElement] ADD  CONSTRAINT [DF_PlacedElement_RelativePosX]  DEFAULT (NULL) FOR [RelativePosX]
GO
/****** Object:  Default [DF_PlacedElement_RelativePosY]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PlacedElement] ADD  CONSTRAINT [DF_PlacedElement_RelativePosY]  DEFAULT (NULL) FOR [RelativePosY]
GO
/****** Object:  Default [DF_PlacedElement_Direction]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PlacedElement] ADD  CONSTRAINT [DF_PlacedElement_Direction]  DEFAULT (NULL) FOR [Direction]
GO
/****** Object:  Default [DF_Point_ParentObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Point] ADD  CONSTRAINT [DF_Point_ParentObjectID]  DEFAULT (NULL) FOR [ParentObjectID]
GO
/****** Object:  Default [DF_Point_ParentPropertyName]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Point] ADD  CONSTRAINT [DF_Point_ParentPropertyName]  DEFAULT (NULL) FOR [ParentPropertyName]
GO
/****** Object:  Default [DF_PowerTransformer_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PowerTransformer] ADD  CONSTRAINT [DF_PowerTransformer_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_PowerTransformer_DisplayName]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PowerTransformer] ADD  CONSTRAINT [DF_PowerTransformer_DisplayName]  DEFAULT ('Unspecified') FOR [DisplayName]
GO
/****** Object:  Default [DF_PowerTransformer_IsVirtual]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PowerTransformer] ADD  CONSTRAINT [DF_PowerTransformer_IsVirtual]  DEFAULT ('False') FOR [IsVirtual]
GO
/****** Object:  Default [DF_PowerTransformer_NamePlacement]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PowerTransformer] ADD  CONSTRAINT [DF_PowerTransformer_NamePlacement]  DEFAULT (NULL) FOR [NamePlacement]
GO
/****** Object:  Default [DF_PowerTransformer_NormalColor]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PowerTransformer] ADD  CONSTRAINT [DF_PowerTransformer_NormalColor]  DEFAULT (NULL) FOR [NormalColor]
GO
/****** Object:  Default [DF_PowerTransformer_RelativeSize]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PowerTransformer] ADD  CONSTRAINT [DF_PowerTransformer_RelativeSize]  DEFAULT ((1.0)) FOR [RelativeSize]
GO
/****** Object:  Default [DF_PowerTransformer_ShowAlarmSymbol]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PowerTransformer] ADD  CONSTRAINT [DF_PowerTransformer_ShowAlarmSymbol]  DEFAULT ('Unspecified') FOR [ShowAlarmSymbol]
GO
/****** Object:  Default [DF_PowerTransformer_ShowNonGoodQualitySymbol]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PowerTransformer] ADD  CONSTRAINT [DF_PowerTransformer_ShowNonGoodQualitySymbol]  DEFAULT ('Unspecified') FOR [ShowNonGoodQualitySymbol]
GO
/****** Object:  Default [DF_PrivateElement_Source]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PrivateElement] ADD  CONSTRAINT [DF_PrivateElement_Source]  DEFAULT (NULL) FOR [Source]
GO
/****** Object:  Default [DF_PrivateElement_Data]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PrivateElement] ADD  CONSTRAINT [DF_PrivateElement_Data]  DEFAULT (NULL) FOR [Data]
GO
/****** Object:  Default [DF_PrivateElementInstanceData_Source]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PrivateElementInstanceData] ADD  CONSTRAINT [DF_PrivateElementInstanceData_Source]  DEFAULT (NULL) FOR [Source]
GO
/****** Object:  Default [DF_PrivateElementInstanceData_Data]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[PrivateElementInstanceData] ADD  CONSTRAINT [DF_PrivateElementInstanceData_Data]  DEFAULT (NULL) FOR [Data]
GO
/****** Object:  Default [DF_Project_ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Project] ADD  CONSTRAINT [DF_Project_ObjectID]  DEFAULT (newid()) FOR [ObjectID]
GO
/****** Object:  Default [DF_ProtocolNamespace_DataAttributeTypeID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[ProtocolNamespace] ADD  CONSTRAINT [DF_ProtocolNamespace_DataAttributeTypeID]  DEFAULT (NULL) FOR [DataAttributeTypeID]
GO
/****** Object:  Default [DF_ProtocolNamespace_DataAttributeID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[ProtocolNamespace] ADD  CONSTRAINT [DF_ProtocolNamespace_DataAttributeID]  DEFAULT (NULL) FOR [DataAttributeID]
GO
/****** Object:  Default [DF_RcbTemplate_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_RcbTemplate_DataSetID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_DataSetID]  DEFAULT (NULL) FOR [DataSetID]
GO
/****** Object:  Default [DF_RcbTemplate_ReportIdentifier]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_ReportIdentifier]  DEFAULT (NULL) FOR [ReportIdentifier]
GO
/****** Object:  Default [DF_RcbTemplate_TrgOp_ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_TrgOp_ObjectID]  DEFAULT (NULL) FOR [TrgOp_ObjectID]
GO
/****** Object:  Default [DF_RcbTemplate_TrgOp_DataChange]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_TrgOp_DataChange]  DEFAULT (NULL) FOR [TrgOp_DataChange]
GO
/****** Object:  Default [DF_RcbTemplate_TrgOp_QualityChange]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_TrgOp_QualityChange]  DEFAULT (NULL) FOR [TrgOp_QualityChange]
GO
/****** Object:  Default [DF_RcbTemplate_TrgOp_DataUpdate]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_TrgOp_DataUpdate]  DEFAULT (NULL) FOR [TrgOp_DataUpdate]
GO
/****** Object:  Default [DF_RcbTemplate_TrgOp_Integrity]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_TrgOp_Integrity]  DEFAULT (NULL) FOR [TrgOp_Integrity]
GO
/****** Object:  Default [DF_RcbTemplate_TrgOp_GeneralInterrogation]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_TrgOp_GeneralInterrogation]  DEFAULT (NULL) FOR [TrgOp_GeneralInterrogation]
GO
/****** Object:  Default [DF_RcbTemplate_OptFlds_ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_OptFlds_ObjectID]  DEFAULT (NULL) FOR [OptFlds_ObjectID]
GO
/****** Object:  Default [DF_RcbTemplate_OptFlds_SequenceNumber]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_OptFlds_SequenceNumber]  DEFAULT (NULL) FOR [OptFlds_SequenceNumber]
GO
/****** Object:  Default [DF_RcbTemplate_OptFlds_ReportTimeStamp]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_OptFlds_ReportTimeStamp]  DEFAULT (NULL) FOR [OptFlds_ReportTimeStamp]
GO
/****** Object:  Default [DF_RcbTemplate_OptFlds_DataSetName]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_OptFlds_DataSetName]  DEFAULT (NULL) FOR [OptFlds_DataSetName]
GO
/****** Object:  Default [DF_RcbTemplate_OptFlds_ReasonForInclusion]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_OptFlds_ReasonForInclusion]  DEFAULT (NULL) FOR [OptFlds_ReasonForInclusion]
GO
/****** Object:  Default [DF_RcbTemplate_OptFlds_DataReference]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_OptFlds_DataReference]  DEFAULT (NULL) FOR [OptFlds_DataReference]
GO
/****** Object:  Default [DF_RcbTemplate_OptFlds_EntryID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_OptFlds_EntryID]  DEFAULT (NULL) FOR [OptFlds_EntryID]
GO
/****** Object:  Default [DF_RcbTemplate_OptFlds_ConfRevision]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_OptFlds_ConfRevision]  DEFAULT (NULL) FOR [OptFlds_ConfRevision]
GO
/****** Object:  Default [DF_RcbTemplate_OptFlds_BufferOverflow]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_OptFlds_BufferOverflow]  DEFAULT (NULL) FOR [OptFlds_BufferOverflow]
GO
/****** Object:  Default [DF_RcbTemplate_OptFlds_Segmentation]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_OptFlds_Segmentation]  DEFAULT (NULL) FOR [OptFlds_Segmentation]
GO
/****** Object:  Default [DF_RcbTemplate_RptEnabled_ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_RptEnabled_ObjectID]  DEFAULT (NULL) FOR [RptEnabled_ObjectID]
GO
/****** Object:  Default [DF_RcbTemplate_RptEnabled_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_RptEnabled_Description]  DEFAULT (NULL) FOR [RptEnabled_Description]
GO
/****** Object:  Default [DF_RcbTemplate_RptEnabled_MaxInstances]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate] ADD  CONSTRAINT [DF_RcbTemplate_RptEnabled_MaxInstances]  DEFAULT (NULL) FOR [RptEnabled_MaxInstances]
GO
/****** Object:  Default [DF_Server_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Server] ADD  CONSTRAINT [DF_Server_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_ServerAt_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[ServerAt] ADD  CONSTRAINT [DF_ServerAt_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_Service_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_Service_Max]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Max]  DEFAULT (NULL) FOR [Max]
GO
/****** Object:  Default [DF_Service_MaxAttributes]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_MaxAttributes]  DEFAULT (NULL) FOR [MaxAttributes]
GO
/****** Object:  Default [DF_Service_SGEdit]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_SGEdit]  DEFAULT (NULL) FOR [SGEdit]
GO
/****** Object:  Default [DF_Service_ConfSG]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_ConfSG]  DEFAULT (NULL) FOR [ConfSG]
GO
/****** Object:  Default [DF_Service_Modify]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Modify]  DEFAULT (NULL) FOR [Modify]
GO
/****** Object:  Default [DF_Service_BufMode]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_BufMode]  DEFAULT (NULL) FOR [BufMode]
GO
/****** Object:  Default [DF_Service_BufConf]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_BufConf]  DEFAULT (NULL) FOR [BufConf]
GO
/****** Object:  Default [DF_Service_CBName]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_CBName]  DEFAULT (NULL) FOR [CBName]
GO
/****** Object:  Default [DF_Service_DatSet]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_DatSet]  DEFAULT (NULL) FOR [DatSet]
GO
/****** Object:  Default [DF_Service_RptID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_RptID]  DEFAULT (NULL) FOR [RptID]
GO
/****** Object:  Default [DF_Service_OptFields]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_OptFields]  DEFAULT (NULL) FOR [OptFields]
GO
/****** Object:  Default [DF_Service_BufTime]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_BufTime]  DEFAULT (NULL) FOR [BufTime]
GO
/****** Object:  Default [DF_Service_TrgOps]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_TrgOps]  DEFAULT (NULL) FOR [TrgOps]
GO
/****** Object:  Default [DF_Service_IntgPd]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_IntgPd]  DEFAULT (NULL) FOR [IntgPd]
GO
/****** Object:  Default [DF_Service_LogEna]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_LogEna]  DEFAULT (NULL) FOR [LogEna]
GO
/****** Object:  Default [DF_Service_AppID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_AppID]  DEFAULT (NULL) FOR [AppID]
GO
/****** Object:  Default [DF_Service_DataLabel]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_DataLabel]  DEFAULT (NULL) FOR [DataLabel]
GO
/****** Object:  Default [DF_Service_SvID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_SvID]  DEFAULT (NULL) FOR [SvID]
GO
/****** Object:  Default [DF_Service_SmpRate]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_SmpRate]  DEFAULT (NULL) FOR [SmpRate]
GO
/****** Object:  Default [DF_Service_FixPrefix]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_FixPrefix]  DEFAULT (NULL) FOR [FixPrefix]
GO
/****** Object:  Default [DF_Service_FixLnInst]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_FixLnInst]  DEFAULT (NULL) FOR [FixLnInst]
GO
/****** Object:  Default [DF_Service_Goose]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Goose]  DEFAULT (NULL) FOR [Goose]
GO
/****** Object:  Default [DF_Service_Gsse]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Gsse]  DEFAULT (NULL) FOR [Gsse]
GO
/****** Object:  Default [DF_Service_BufReport]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_BufReport]  DEFAULT (NULL) FOR [BufReport]
GO
/****** Object:  Default [DF_Service_UnbufReport]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_UnbufReport]  DEFAULT (NULL) FOR [UnbufReport]
GO
/****** Object:  Default [DF_Service_ReadLog]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_ReadLog]  DEFAULT (NULL) FOR [ReadLog]
GO
/****** Object:  Default [DF_Service_Sv]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Sv]  DEFAULT (NULL) FOR [Sv]
GO
/****** Object:  Default [DF_Service_ResvTms]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_ResvTms]  DEFAULT (NULL) FOR [ResvTms]
GO
/****** Object:  Default [DF_Service_Owner]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Owner]  DEFAULT (NULL) FOR [Owner]
GO
/****** Object:  Default [DF_Service_SamplesPerSec]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_SamplesPerSec]  DEFAULT (NULL) FOR [SamplesPerSec]
GO
/****** Object:  Default [DF_Service_PdcTimeStamp]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_PdcTimeStamp]  DEFAULT (NULL) FOR [PdcTimeStamp]
GO
/****** Object:  Default [DF_Service_FixedOffs]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_FixedOffs]  DEFAULT (NULL) FOR [FixedOffs]
GO
/****** Object:  Default [DF_Service_Delivery]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Delivery]  DEFAULT (NULL) FOR [Delivery]
GO
/****** Object:  Default [DF_Service_DeliveryConf]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_DeliveryConf]  DEFAULT (NULL) FOR [DeliveryConf]
GO
/****** Object:  Default [DF_Service_Mms]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Mms]  DEFAULT (NULL) FOR [Mms]
GO
/****** Object:  Default [DF_Service_Ftp]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Ftp]  DEFAULT (NULL) FOR [Ftp]
GO
/****** Object:  Default [DF_Service_Ftps]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Ftps]  DEFAULT (NULL) FOR [Ftps]
GO
/****** Object:  Default [DF_Service_SupportsLdName]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_SupportsLdName]  DEFAULT (NULL) FOR [SupportsLdName]
GO
/****** Object:  Default [DF_Service_MaxReports]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_MaxReports]  DEFAULT (NULL) FOR [MaxReports]
GO
/****** Object:  Default [DF_Service_MaxGoose]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_MaxGoose]  DEFAULT (NULL) FOR [MaxGoose]
GO
/****** Object:  Default [DF_Service_MaxSmv]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_MaxSmv]  DEFAULT (NULL) FOR [MaxSmv]
GO
/****** Object:  Default [DF_Service_TimeSyncProt]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_TimeSyncProt]  DEFAULT (NULL) FOR [TimeSyncProt]
GO
/****** Object:  Default [DF_Service_Sntp]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Sntp]  DEFAULT (NULL) FOR [Sntp]
GO
/****** Object:  Default [DF_Service_C37_238]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_C37_238]  DEFAULT (NULL) FOR [C37_238]
GO
/****** Object:  Default [DF_Service_Other]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Other]  DEFAULT (NULL) FOR [Other]
GO
/****** Object:  Default [DF_Service_SetToRo]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_SetToRo]  DEFAULT (NULL) FOR [SetToRo]
GO
/****** Object:  Default [DF_Service_Hsr]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Hsr]  DEFAULT (NULL) FOR [Hsr]
GO
/****** Object:  Default [DF_Service_Prp]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Prp]  DEFAULT (NULL) FOR [Prp]
GO
/****** Object:  Default [DF_Service_Rstp]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Rstp]  DEFAULT (NULL) FOR [Rstp]
GO
/****** Object:  Default [DF_Service_Ipv6]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Service] ADD  CONSTRAINT [DF_Service_Ipv6]  DEFAULT (NULL) FOR [Ipv6]
GO
/****** Object:  Default [DF_SettingGroupControlBlock_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SettingGroupControlBlock] ADD  CONSTRAINT [DF_SettingGroupControlBlock_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_SmvControlBlock_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_SmvControlBlock_DataSetID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_DataSetID]  DEFAULT (NULL) FOR [DataSetID]
GO
/****** Object:  Default [DF_SmvControlBlock_Reserve]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_Reserve]  DEFAULT (NULL) FOR [Reserve]
GO
/****** Object:  Default [DF_SmvControlBlock_SmvID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_SmvID]  DEFAULT (NULL) FOR [SmvID]
GO
/****** Object:  Default [DF_SmvControlBlock_OptFlds_ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_OptFlds_ObjectID]  DEFAULT (NULL) FOR [OptFlds_ObjectID]
GO
/****** Object:  Default [DF_SmvControlBlock_OptFlds_RefreshTime]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_OptFlds_RefreshTime]  DEFAULT (NULL) FOR [OptFlds_RefreshTime]
GO
/****** Object:  Default [DF_SmvControlBlock_OptFlds_SampleRate]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_OptFlds_SampleRate]  DEFAULT (NULL) FOR [OptFlds_SampleRate]
GO
/****** Object:  Default [DF_SmvControlBlock_OptFlds_Dataset]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_OptFlds_Dataset]  DEFAULT (NULL) FOR [OptFlds_Dataset]
GO
/****** Object:  Default [DF_SmvControlBlock_OptFlds_Security]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_OptFlds_Security]  DEFAULT (NULL) FOR [OptFlds_Security]
GO
/****** Object:  Default [DF_SmvControlBlock_OptFlds_SampleSynchronised]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_OptFlds_SampleSynchronised]  DEFAULT (NULL) FOR [OptFlds_SampleSynchronised]
GO
/****** Object:  Default [DF_SmvControlBlock_OptFlds_DataRef]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_OptFlds_DataRef]  DEFAULT (NULL) FOR [OptFlds_DataRef]
GO
/****** Object:  Default [DF_SmvControlBlock_SecurityEnable]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_SecurityEnable]  DEFAULT (NULL) FOR [SecurityEnable]
GO
/****** Object:  Default [DF_SmvControlBlock_Protocol]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock] ADD  CONSTRAINT [DF_SmvControlBlock_Protocol]  DEFAULT (NULL) FOR [Protocol]
GO
/****** Object:  Default [DF_StructuredDataObject_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[StructuredDataObject] ADD  CONSTRAINT [DF_StructuredDataObject_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_SubFunction_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SubFunction] ADD  CONSTRAINT [DF_SubFunction_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_SubFunction_Type]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SubFunction] ADD  CONSTRAINT [DF_SubFunction_Type]  DEFAULT (NULL) FOR [Type]
GO
/****** Object:  Default [DF_Substation_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Substation] ADD  CONSTRAINT [DF_Substation_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_Substation_SclFullDocumentID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Substation] ADD  CONSTRAINT [DF_Substation_SclFullDocumentID]  DEFAULT (NULL) FOR [SclFullDocumentID]
GO
/****** Object:  Default [DF_TapChanger_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TapChanger] ADD  CONSTRAINT [DF_TapChanger_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_Terminal_ConductingEquipmentID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Terminal] ADD  CONSTRAINT [DF_Terminal_ConductingEquipmentID]  DEFAULT (NULL) FOR [ConductingEquipmentID]
GO
/****** Object:  Default [DF_Terminal_TransformerWindingID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Terminal] ADD  CONSTRAINT [DF_Terminal_TransformerWindingID]  DEFAULT (NULL) FOR [TransformerWindingID]
GO
/****** Object:  Default [DF_Terminal_Name]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Terminal] ADD  CONSTRAINT [DF_Terminal_Name]  DEFAULT (NULL) FOR [Name]
GO
/****** Object:  Default [DF_Terminal_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Terminal] ADD  CONSTRAINT [DF_Terminal_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_Terminal_ConnectivityNodeID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Terminal] ADD  CONSTRAINT [DF_Terminal_ConnectivityNodeID]  DEFAULT (NULL) FOR [ConnectivityNodeID]
GO
/****** Object:  Default [DF_TextElement_Source]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TextElement] ADD  CONSTRAINT [DF_TextElement_Source]  DEFAULT (NULL) FOR [Source]
GO
/****** Object:  Default [DF_TextElement_Text]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TextElement] ADD  CONSTRAINT [DF_TextElement_Text]  DEFAULT (NULL) FOR [Text]
GO
/****** Object:  Default [DF_TextElementInstanceData_Source]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TextElementInstanceData] ADD  CONSTRAINT [DF_TextElementInstanceData_Source]  DEFAULT (NULL) FOR [Source]
GO
/****** Object:  Default [DF_TextElementInstanceData_Text]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TextElementInstanceData] ADD  CONSTRAINT [DF_TextElementInstanceData_Text]  DEFAULT (NULL) FOR [Text]
GO
/****** Object:  Default [DF_TransformerWinding_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TransformerWinding] ADD  CONSTRAINT [DF_TransformerWinding_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_TransformerWinding_DisplayName]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TransformerWinding] ADD  CONSTRAINT [DF_TransformerWinding_DisplayName]  DEFAULT ('Unspecified') FOR [DisplayName]
GO
/****** Object:  Default [DF_TransformerWinding_IsVirtual]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TransformerWinding] ADD  CONSTRAINT [DF_TransformerWinding_IsVirtual]  DEFAULT ('False') FOR [IsVirtual]
GO
/****** Object:  Default [DF_TransformerWinding_NamePlacement]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TransformerWinding] ADD  CONSTRAINT [DF_TransformerWinding_NamePlacement]  DEFAULT (NULL) FOR [NamePlacement]
GO
/****** Object:  Default [DF_TransformerWinding_NormalColor]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TransformerWinding] ADD  CONSTRAINT [DF_TransformerWinding_NormalColor]  DEFAULT (NULL) FOR [NormalColor]
GO
/****** Object:  Default [DF_TransformerWinding_RelativeSize]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TransformerWinding] ADD  CONSTRAINT [DF_TransformerWinding_RelativeSize]  DEFAULT ((1.0)) FOR [RelativeSize]
GO
/****** Object:  Default [DF_TransformerWinding_ShowAlarmSymbol]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TransformerWinding] ADD  CONSTRAINT [DF_TransformerWinding_ShowAlarmSymbol]  DEFAULT ('Unspecified') FOR [ShowAlarmSymbol]
GO
/****** Object:  Default [DF_TransformerWinding_ShowNonGoodQualitySymbol]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TransformerWinding] ADD  CONSTRAINT [DF_TransformerWinding_ShowNonGoodQualitySymbol]  DEFAULT ('Unspecified') FOR [ShowNonGoodQualitySymbol]
GO
/****** Object:  Default [DF_TransformerWinding_DisplaySymbol]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TransformerWinding] ADD  CONSTRAINT [DF_TransformerWinding_DisplaySymbol]  DEFAULT (NULL) FOR [DisplaySymbol]
GO
/****** Object:  Default [DF_VoltageLevel_SubstationID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[VoltageLevel] ADD  CONSTRAINT [DF_VoltageLevel_SubstationID]  DEFAULT (NULL) FOR [SubstationID]
GO
/****** Object:  Default [DF_VoltageLevel_Description]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[VoltageLevel] ADD  CONSTRAINT [DF_VoltageLevel_Description]  DEFAULT (NULL) FOR [Description]
GO
/****** Object:  Default [DF_VoltageLevel_Voltage]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[VoltageLevel] ADD  CONSTRAINT [DF_VoltageLevel_Voltage]  DEFAULT (NULL) FOR [Voltage]
GO
/****** Object:  Default [DF_VoltageLevel_Multiplier]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[VoltageLevel] ADD  CONSTRAINT [DF_VoltageLevel_Multiplier]  DEFAULT (NULL) FOR [Multiplier]
GO
/****** Object:  ForeignKey [FK_AbstractDataAttribute.DataAttributeTypeID_DataAttributeType.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute]  WITH CHECK ADD  CONSTRAINT [FK_AbstractDataAttribute.DataAttributeTypeID_DataAttributeType.ObjectID] FOREIGN KEY([DataAttributeTypeID])
REFERENCES [IEC61850].[DataAttributeType] ([ObjectID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [IEC61850].[AbstractDataAttribute] CHECK CONSTRAINT [FK_AbstractDataAttribute.DataAttributeTypeID_DataAttributeType.ObjectID]
GO
/****** Object:  ForeignKey [FK_AbstractDataAttribute.EnumTypeID_EnumType.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute]  WITH CHECK ADD  CONSTRAINT [FK_AbstractDataAttribute.EnumTypeID_EnumType.ObjectID] FOREIGN KEY([EnumTypeID])
REFERENCES [IEC61850].[EnumType] ([ObjectID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [IEC61850].[AbstractDataAttribute] CHECK CONSTRAINT [FK_AbstractDataAttribute.EnumTypeID_EnumType.ObjectID]
GO
/****** Object:  ForeignKey [FK_AbstractDataAttribute.FcdaID_Fcda.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttribute]  WITH CHECK ADD  CONSTRAINT [FK_AbstractDataAttribute.FcdaID_Fcda.ObjectID] FOREIGN KEY([FcdaID])
REFERENCES [IEC61850].[Fcda] ([ObjectID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [IEC61850].[AbstractDataAttribute] CHECK CONSTRAINT [FK_AbstractDataAttribute.FcdaID_Fcda.ObjectID]
GO
/****** Object:  ForeignKey [FK_AbstractDataAttributeSgValue.AbstractDataAttributeID_AbstractDataAttribute.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AbstractDataAttributeSgValue]  WITH NOCHECK ADD  CONSTRAINT [FK_AbstractDataAttributeSgValue.AbstractDataAttributeID_AbstractDataAttribute.ObjectID] FOREIGN KEY([AbstractDataAttributeID])
REFERENCES [IEC61850].[AbstractDataAttribute] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[AbstractDataAttributeSgValue] CHECK CONSTRAINT [FK_AbstractDataAttributeSgValue.AbstractDataAttributeID_AbstractDataAttribute.ObjectID]
GO
/****** Object:  ForeignKey [FK_AccessPoint.IedID_Ied.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AccessPoint]  WITH CHECK ADD  CONSTRAINT [FK_AccessPoint.IedID_Ied.ObjectID] FOREIGN KEY([IedID])
REFERENCES [IEC61850].[Ied] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[AccessPoint] CHECK CONSTRAINT [FK_AccessPoint.IedID_Ied.ObjectID]
GO
/****** Object:  ForeignKey [FK_AccessPointAddress.AccessPointID_ConnectedAccessPoint.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[AccessPointAddress]  WITH CHECK ADD  CONSTRAINT [FK_AccessPointAddress.AccessPointID_ConnectedAccessPoint.ObjectID] FOREIGN KEY([AccessPointID], [IedID])
REFERENCES [IEC61850].[ConnectedAccessPoint] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[AccessPointAddress] CHECK CONSTRAINT [FK_AccessPointAddress.AccessPointID_ConnectedAccessPoint.ObjectID]
GO
/****** Object:  ForeignKey [FK_Association.ServerID_Server.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Association]  WITH CHECK ADD  CONSTRAINT [FK_Association.ServerID_Server.ObjectID] FOREIGN KEY([ServerID], [IedID])
REFERENCES [IEC61850].[Server] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[Association] CHECK CONSTRAINT [FK_Association.ServerID_Server.ObjectID]
GO
/****** Object:  ForeignKey [FK_Bay.VoltageLevelID_VoltageLevel.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Bay]  WITH CHECK ADD  CONSTRAINT [FK_Bay.VoltageLevelID_VoltageLevel.ObjectID] FOREIGN KEY([VoltageLevelID])
REFERENCES [IEC61850].[VoltageLevel] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[Bay] CHECK CONSTRAINT [FK_Bay.VoltageLevelID_VoltageLevel.ObjectID]
GO
/****** Object:  ForeignKey [FK_Busbar.ConnectivityNodeID_ConnectivityNode.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Busbar]  WITH CHECK ADD  CONSTRAINT [FK_Busbar.ConnectivityNodeID_ConnectivityNode.ObjectID] FOREIGN KEY([ConnectivityNodeID])
REFERENCES [IEC61850].[ConnectivityNode] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[Busbar] CHECK CONSTRAINT [FK_Busbar.ConnectivityNodeID_ConnectivityNode.ObjectID]
GO
/****** Object:  ForeignKey [FK_BusbarColoringSettings_SclFullDocument]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[BusbarColoring]  WITH NOCHECK ADD  CONSTRAINT [FK_BusbarColoringSettings_SclFullDocument] FOREIGN KEY([SclFullDocumentID])
REFERENCES [IEC61850].[SclFullDocument] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[BusbarColoring] CHECK CONSTRAINT [FK_BusbarColoringSettings_SclFullDocument]
GO
/****** Object:  ForeignKey [FK_ClientLN.RcbTemplateID_RcbTemplate.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ClientLN]  WITH NOCHECK ADD  CONSTRAINT [FK_ClientLN.RcbTemplateID_RcbTemplate.ObjectID] FOREIGN KEY([RcbTemplateID], [IedID])
REFERENCES [IEC61850].[RcbTemplate] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[ClientLN] CHECK CONSTRAINT [FK_ClientLN.RcbTemplateID_RcbTemplate.ObjectID]
GO
/****** Object:  ForeignKey [FK_CommNodeRole.CommNodeID_Ied.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[CommNodeRole]  WITH CHECK ADD  CONSTRAINT [FK_CommNodeRole.CommNodeID_Ied.ObjectID] FOREIGN KEY([CommNodeID])
REFERENCES [IEC61850].[Ied] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[CommNodeRole] CHECK CONSTRAINT [FK_CommNodeRole.CommNodeID_Ied.ObjectID]
GO
/****** Object:  ForeignKey [FK_ConnectedAccessPoint.AccessPointID_AccessPoint.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConnectedAccessPoint]  WITH CHECK ADD  CONSTRAINT [FK_ConnectedAccessPoint.AccessPointID_AccessPoint.ObjectID] FOREIGN KEY([AccessPointID], [IedID])
REFERENCES [IEC61850].[AccessPoint] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[ConnectedAccessPoint] CHECK CONSTRAINT [FK_ConnectedAccessPoint.AccessPointID_AccessPoint.ObjectID]
GO
/****** Object:  ForeignKey [FK_ConnectedAccessPoint.CommunicationSubNetworkID_CommunicationSubNetwork.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConnectedAccessPoint]  WITH CHECK ADD  CONSTRAINT [FK_ConnectedAccessPoint.CommunicationSubNetworkID_CommunicationSubNetwork.ObjectID] FOREIGN KEY([CommunicationSubNetworkID])
REFERENCES [IEC61850].[CommunicationSubNetwork] ([ObjectID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [IEC61850].[ConnectedAccessPoint] CHECK CONSTRAINT [FK_ConnectedAccessPoint.CommunicationSubNetworkID_CommunicationSubNetwork.ObjectID]
GO
/****** Object:  ForeignKey [FK_ConnectivityNode.BayID_Bay.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ConnectivityNode]  WITH CHECK ADD  CONSTRAINT [FK_ConnectivityNode.BayID_Bay.ObjectID] FOREIGN KEY([BayID])
REFERENCES [IEC61850].[Bay] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[ConnectivityNode] CHECK CONSTRAINT [FK_ConnectivityNode.BayID_Bay.ObjectID]
GO
/****** Object:  ForeignKey [FK_ControlBlockAddress.AccessPointID_ConnectedAccessPoint.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ControlBlockAddress]  WITH CHECK ADD  CONSTRAINT [FK_ControlBlockAddress.AccessPointID_ConnectedAccessPoint.ObjectID] FOREIGN KEY([AccessPointID], [IedID])
REFERENCES [IEC61850].[ConnectedAccessPoint] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[ControlBlockAddress] CHECK CONSTRAINT [FK_ControlBlockAddress.AccessPointID_ConnectedAccessPoint.ObjectID]
GO

/****** Object:  ForeignKey [FK_DataObject.LogicalNodeTypeID_LogicalNodeType.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataObject]  WITH CHECK ADD  CONSTRAINT [FK_DataObject.LogicalNodeTypeID_LogicalNodeType.ObjectID] FOREIGN KEY([LogicalNodeTypeID])
REFERENCES [IEC61850].[LogicalNodeType] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[DataObject] CHECK CONSTRAINT [FK_DataObject.LogicalNodeTypeID_LogicalNodeType.ObjectID]
GO
/****** Object:  ForeignKey [FK_DataSet.LogicalNodeID_LogicalNode.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataSet]  WITH CHECK ADD  CONSTRAINT [FK_DataSet.LogicalNodeID_LogicalNode.ObjectID] FOREIGN KEY([LogicalNodeID], [IedID])
REFERENCES [IEC61850].[LogicalNode] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[DataSet] CHECK CONSTRAINT [FK_DataSet.LogicalNodeID_LogicalNode.ObjectID]
GO
/****** Object:  ForeignKey [FK_DataSetMemberRef.DataSetID_DataSet.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[DataSetMemberRef]  WITH CHECK ADD  CONSTRAINT [FK_DataSetMemberRef.DataSetID_DataSet.ObjectID] FOREIGN KEY([DataSetID], [IedID])
REFERENCES [IEC61850].[DataSet] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[DataSetMemberRef] CHECK CONSTRAINT [FK_DataSetMemberRef.DataSetID_DataSet.ObjectID]
GO
/****** Object:  ForeignKey [FK_EnumTypeValue.EnumTypeID_EnumType.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[EnumTypeValue]  WITH CHECK ADD  CONSTRAINT [FK_EnumTypeValue.EnumTypeID_EnumType.ObjectID] FOREIGN KEY([EnumTypeID])
REFERENCES [IEC61850].[EnumType] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[EnumTypeValue] CHECK CONSTRAINT [FK_EnumTypeValue.EnumTypeID_EnumType.ObjectID]
GO
/****** Object:  ForeignKey [FK_ExternalReference.LogicalNodeID_LogicalNode.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[ExternalReference]  WITH CHECK ADD  CONSTRAINT [FK_ExternalReference.LogicalNodeID_LogicalNode.ObjectID] FOREIGN KEY([LogicalNodeID], [IedID])
REFERENCES [IEC61850].[LogicalNode] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[ExternalReference] CHECK CONSTRAINT [FK_ExternalReference.LogicalNodeID_LogicalNode.ObjectID]
GO
/****** Object:  ForeignKey [FK_Fcda.DataObjectTypeID_DataObjectType.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Fcda]  WITH CHECK ADD  CONSTRAINT [FK_Fcda.DataObjectTypeID_DataObjectType.ObjectID] FOREIGN KEY([DataObjectTypeID])
REFERENCES [IEC61850].[DataObjectType] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[Fcda] CHECK CONSTRAINT [FK_Fcda.DataObjectTypeID_DataObjectType.ObjectID]
GO
/****** Object:  ForeignKey [FK_GseControlBlock.LogicalNodeID_LogicalNode.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[GseControlBlock]  WITH CHECK ADD  CONSTRAINT [FK_GseControlBlock.LogicalNodeID_LogicalNode.ObjectID] FOREIGN KEY([LogicalNodeID], [IedID])
REFERENCES [IEC61850].[LogicalNode] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[GseControlBlock] CHECK CONSTRAINT [FK_GseControlBlock.LogicalNodeID_LogicalNode.ObjectID]
GO
/****** Object:  ForeignKey [FK_Header.SclFullDocumentID_SclFullDocument.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Header]  WITH CHECK ADD  CONSTRAINT [FK_Header.SclFullDocumentID_SclFullDocument.ObjectID] FOREIGN KEY([SclFullDocumentID])
REFERENCES [IEC61850].[SclFullDocument] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[Header] CHECK CONSTRAINT [FK_Header.SclFullDocumentID_SclFullDocument.ObjectID]
GO
/****** Object:  ForeignKey [FK_HistoryItem.HeaderID_Header.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[HistoryItem]  WITH CHECK ADD  CONSTRAINT [FK_HistoryItem.HeaderID_Header.ObjectID] FOREIGN KEY([HeaderID])
REFERENCES [IEC61850].[Header] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[HistoryItem] CHECK CONSTRAINT [FK_HistoryItem.HeaderID_Header.ObjectID]
GO
/****** Object:  ForeignKey [FK_Ied.SclFullDocumentID_SclFullDocument.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Ied]  WITH CHECK ADD  CONSTRAINT [FK_Ied.SclFullDocumentID_SclFullDocument.ObjectID] FOREIGN KEY([SclFullDocumentID])
REFERENCES [IEC61850].[SclFullDocument] ([ObjectID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [IEC61850].[Ied] CHECK CONSTRAINT [FK_Ied.SclFullDocumentID_SclFullDocument.ObjectID]
GO
/****** Object:  ForeignKey [FK_Input.LogicalNodeID_LogicalNode.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Input]  WITH CHECK ADD  CONSTRAINT [FK_Input.LogicalNodeID_LogicalNode.ObjectID] FOREIGN KEY([LogicalNodeID], [IedID])
REFERENCES [IEC61850].[LogicalNode] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[Input] CHECK CONSTRAINT [FK_Input.LogicalNodeID_LogicalNode.ObjectID]
GO
/****** Object:  ForeignKey [FK_InstanceDataSgValue.Path_InstanceData.Path]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[InstanceDataSgValue]  WITH CHECK ADD  CONSTRAINT [FK_InstanceDataSgValue.Path_InstanceData.Path] FOREIGN KEY([LogicalNodeID], [Path], [IedID])
REFERENCES [IEC61850].[InstanceData] ([LogicalNodeID], [Path], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[InstanceDataSgValue] CHECK CONSTRAINT [FK_InstanceDataSgValue.Path_InstanceData.Path]
GO
/****** Object:  ForeignKey [FK_IsPoweredBasicRule_IsPoweredRule]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[IsPoweredBasicRule]  WITH CHECK ADD  CONSTRAINT [FK_IsPoweredBasicRule_IsPoweredRule] FOREIGN KEY([ParentID])
REFERENCES [IEC61850].[IsPoweredRule] ([ObjectID])
GO
ALTER TABLE [IEC61850].[IsPoweredBasicRule] CHECK CONSTRAINT [FK_IsPoweredBasicRule_IsPoweredRule]
GO
/****** Object:  ForeignKey [FK_IsPoweredRule_IPowerSource]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[IsPoweredRule]  WITH CHECK ADD  CONSTRAINT [FK_IsPoweredRule_IPowerSource] FOREIGN KEY([ParentID])
REFERENCES [IEC61850].[IPowerSource] ([ObjectID])
GO
ALTER TABLE [IEC61850].[IsPoweredRule] CHECK CONSTRAINT [FK_IsPoweredRule_IPowerSource]
GO
/****** Object:  ForeignKey [FK_Line.TerminalID_Terminal.ObjectID]    Script Date: 06/13/2013 09:46:35 ******/
ALTER TABLE [IEC61850].[Line]  WITH CHECK ADD  CONSTRAINT [FK_Line.TerminalID_Terminal.ObjectID] FOREIGN KEY([TerminalID])
REFERENCES [IEC61850].[Terminal] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[Line] CHECK CONSTRAINT [FK_Line.TerminalID_Terminal.ObjectID]
GO
/****** Object:  ForeignKey [FK_Log.LogicalNodeID_LogicalNode.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Log]  WITH CHECK ADD  CONSTRAINT [FK_Log.LogicalNodeID_LogicalNode.ObjectID] FOREIGN KEY([LogicalNodeID], [IedID])
REFERENCES [IEC61850].[LogicalNode] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[Log] CHECK CONSTRAINT [FK_Log.LogicalNodeID_LogicalNode.ObjectID]
GO
/****** Object:  ForeignKey [FK_LogControlBlock.LogicalNodeID_LogicalNode.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogControlBlock]  WITH CHECK ADD  CONSTRAINT [FK_LogControlBlock.LogicalNodeID_LogicalNode.ObjectID] FOREIGN KEY([LogicalNodeID], [IedID])
REFERENCES [IEC61850].[LogicalNode] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[LogControlBlock] CHECK CONSTRAINT [FK_LogControlBlock.LogicalNodeID_LogicalNode.ObjectID]
GO
/****** Object:  ForeignKey [FK_LogicalDevice.ServerID_Server.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalDevice]  WITH CHECK ADD  CONSTRAINT [FK_LogicalDevice.ServerID_Server.ObjectID] FOREIGN KEY([ServerID], [IedID])
REFERENCES [IEC61850].[Server] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[LogicalDevice] CHECK CONSTRAINT [FK_LogicalDevice.ServerID_Server.ObjectID]
GO
/****** Object:  ForeignKey [FK_LogicalNode.LogicalNodeTypeID_LogicalNodeType.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[LogicalNode]  WITH CHECK ADD  CONSTRAINT [FK_LogicalNode.LogicalNodeTypeID_LogicalNodeType.ObjectID] FOREIGN KEY([LogicalNodeTypeID])
REFERENCES [IEC61850].[LogicalNodeType] ([ObjectID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [IEC61850].[LogicalNode] CHECK CONSTRAINT [FK_LogicalNode.LogicalNodeTypeID_LogicalNodeType.ObjectID]
GO
/****** Object:  ForeignKey [FK_OPCServer_Substation]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[OPCServer]  WITH CHECK ADD  CONSTRAINT [FK_OPCServer_Substation] FOREIGN KEY([ParentID])
REFERENCES [IEC61850].[Substation] ([ObjectID])
GO
ALTER TABLE [IEC61850].[OPCServer] CHECK CONSTRAINT [FK_OPCServer_Substation]
GO
/****** Object:  ForeignKey [FK_OPCServerReferencedIED_OPCServer]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[OPCServerReferencedIED]  WITH CHECK ADD  CONSTRAINT [FK_OPCServerReferencedIED_OPCServer] FOREIGN KEY([ParentID])
REFERENCES [IEC61850].[OPCServer] ([ObjectID])
GO
ALTER TABLE [IEC61850].[OPCServerReferencedIED] CHECK CONSTRAINT [FK_OPCServerReferencedIED_OPCServer]
GO

ALTER TABLE [IEC61850].[PhysicalConnection]  WITH CHECK ADD  CONSTRAINT [FK_PhysicalConnection.ConnectedAccessPointID_ConnectedAccessPoint.ObjectID] FOREIGN KEY([ConnectedAccessPointID], [IedID])
REFERENCES [IEC61850].[ConnectedAccessPoint] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[PhysicalConnection] CHECK CONSTRAINT [FK_PhysicalConnection.ConnectedAccessPointID_ConnectedAccessPoint.ObjectID]
GO

ALTER TABLE [IEC61850].[PhysicalConnection]  WITH CHECK ADD  CONSTRAINT [FK_PhysicalConnection.ConnectionBusID_ConnectionBus.ObjectID] FOREIGN KEY([ConnectionBusID])
REFERENCES [IEC61850].[ConnectionBus] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[PhysicalConnection] CHECK CONSTRAINT [FK_PhysicalConnection.ConnectionBusID_ConnectionBus.ObjectID]
GO

ALTER TABLE [IEC61850].[PhysicalConnectionParameter]  WITH CHECK ADD  CONSTRAINT [FK_PhysicalConnectionParameter.PhysicalConnectionID_PhysicalConnection.ObjectID] FOREIGN KEY([PhysicalConnectionID], [IedID])
REFERENCES [IEC61850].[PhysicalConnection] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[PhysicalConnectionParameter] CHECK CONSTRAINT [FK_PhysicalConnectionParameter.PhysicalConnectionID_PhysicalConnection.ObjectID]
GO


/****** Object:  ForeignKey [FK_RcbTemplate.LogicalNodeID_LogicalNode.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[RcbTemplate]  WITH CHECK ADD  CONSTRAINT [FK_RcbTemplate.LogicalNodeID_LogicalNode.ObjectID] FOREIGN KEY([LogicalNodeID], [IedID])
REFERENCES [IEC61850].[LogicalNode] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[RcbTemplate] CHECK CONSTRAINT [FK_RcbTemplate.LogicalNodeID_LogicalNode.ObjectID]
GO
/****** Object:  ForeignKey [FK_Server.AccessPointID_AccessPoint.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Server]  WITH CHECK ADD  CONSTRAINT [FK_Server.AccessPointID_AccessPoint.ObjectID] FOREIGN KEY([AccessPointID], [IedID])
REFERENCES [IEC61850].[AccessPoint] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[Server] CHECK CONSTRAINT [FK_Server.AccessPointID_AccessPoint.ObjectID]
GO
/****** Object:  ForeignKey [FK_ServerAt.AccessPointID_AccessPoint.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[ServerAt]  WITH CHECK ADD  CONSTRAINT [FK_ServerAt.AccessPointID_AccessPoint.ObjectID] FOREIGN KEY([AccessPointID], [IedID])
REFERENCES [IEC61850].[AccessPoint] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[ServerAt] CHECK CONSTRAINT [FK_ServerAt.AccessPointID_AccessPoint.ObjectID]
GO
/****** Object:  ForeignKey [FK_SettingGroupControlBlock.LogicalNodeID_LogicalNode.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SettingGroupControlBlock]  WITH CHECK ADD  CONSTRAINT [FK_SettingGroupControlBlock.LogicalNodeID_LogicalNode.ObjectID] FOREIGN KEY([LogicalNodeID], [IedID])
REFERENCES [IEC61850].[LogicalNode] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[SettingGroupControlBlock] CHECK CONSTRAINT [FK_SettingGroupControlBlock.LogicalNodeID_LogicalNode.ObjectID]
GO
/****** Object:  ForeignKey [FK_SingleLineDiagram.SclFullDocumentID_SclFullDocument.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SingleLineDiagram]  WITH CHECK ADD  CONSTRAINT [FK_SingleLineDiagram.SclFullDocumentID_SclFullDocument.ObjectID] FOREIGN KEY([SclFullDocumentID])
REFERENCES [IEC61850].[SclFullDocument] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[SingleLineDiagram] CHECK CONSTRAINT [FK_SingleLineDiagram.SclFullDocumentID_SclFullDocument.ObjectID]
GO
/****** Object:  ForeignKey [FK_SLD_SclFullDocument]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SLD]  WITH NOCHECK ADD  CONSTRAINT [FK_SLD_SclFullDocument] FOREIGN KEY([ParentID])
REFERENCES [IEC61850].[SclFullDocument] ([ObjectID])
GO
ALTER TABLE [IEC61850].[SLD] CHECK CONSTRAINT [FK_SLD_SclFullDocument]
GO
/****** Object:  ForeignKey [FK_SLD_PrecisionFor_SLD]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SLD_PrecisionFor]  WITH CHECK ADD  CONSTRAINT [FK_SLD_PrecisionFor_SLD] FOREIGN KEY([ParentID])
REFERENCES [IEC61850].[SLD] ([ObjectID])
GO
ALTER TABLE [IEC61850].[SLD_PrecisionFor] CHECK CONSTRAINT [FK_SLD_PrecisionFor_SLD]
GO
/****** Object:  ForeignKey [FK_SmvControlBlock.LogicalNodeID_LogicalNode.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvControlBlock]  WITH CHECK ADD  CONSTRAINT [FK_SmvControlBlock.LogicalNodeID_LogicalNode.ObjectID] FOREIGN KEY([LogicalNodeID], [IedID])
REFERENCES [IEC61850].[LogicalNode] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[SmvControlBlock] CHECK CONSTRAINT [FK_SmvControlBlock.LogicalNodeID_LogicalNode.ObjectID]
GO
/****** Object:  ForeignKey [FK_SmvSampleRate.ServiceID_Service.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvSampleRate]  WITH CHECK ADD  CONSTRAINT [FK_SmvSampleRate.ServiceID_Service.ObjectID] FOREIGN KEY([ServiceID], [IedID])
REFERENCES [IEC61850].[Service] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[SmvSampleRate] CHECK CONSTRAINT [FK_SmvSampleRate.ServiceID_Service.ObjectID]
GO
/****** Object:  ForeignKey [FK_SmvSamplesPerSec.ServiceID_Service.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvSamplesPerSec]  WITH CHECK ADD  CONSTRAINT [FK_SmvSamplesPerSec.ServiceID_Service.ObjectID] FOREIGN KEY([ServiceID], [IedID])
REFERENCES [IEC61850].[Service] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[SmvSamplesPerSec] CHECK CONSTRAINT [FK_SmvSamplesPerSec.ServiceID_Service.ObjectID]
GO
/****** Object:  ForeignKey [FK_SmvSecPerSamples.ServiceID_Service.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SmvSecPerSamples]  WITH CHECK ADD  CONSTRAINT [FK_SmvSecPerSamples.ServiceID_Service.ObjectID] FOREIGN KEY([ServiceID], [IedID])
REFERENCES [IEC61850].[Service] ([ObjectID], [IedID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[SmvSecPerSamples] CHECK CONSTRAINT [FK_SmvSecPerSamples.ServiceID_Service.ObjectID]
GO
/****** Object:  ForeignKey [FK_StructuredDataObject.DataObjectTypeID_DataObjectType.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[StructuredDataObject]  WITH CHECK ADD  CONSTRAINT [FK_StructuredDataObject.DataObjectTypeID_DataObjectType.ObjectID] FOREIGN KEY([DataObjectTypeID])
REFERENCES [IEC61850].[DataObjectType] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[StructuredDataObject] CHECK CONSTRAINT [FK_StructuredDataObject.DataObjectTypeID_DataObjectType.ObjectID]
GO
/****** Object:  ForeignKey [FK_SubFunction.FunctionID_Function.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[SubFunction]  WITH CHECK ADD  CONSTRAINT [FK_SubFunction.FunctionID_Function.ObjectID] FOREIGN KEY([FunctionID])
REFERENCES [IEC61850].[Function] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[SubFunction] CHECK CONSTRAINT [FK_SubFunction.FunctionID_Function.ObjectID]
GO
/****** Object:  ForeignKey [FK_TapChanger.TransformerWindingID_TransformerWinding.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TapChanger]  WITH CHECK ADD  CONSTRAINT [FK_TapChanger.TransformerWindingID_TransformerWinding.ObjectID] FOREIGN KEY([TransformerWindingID])
REFERENCES [IEC61850].[TransformerWinding] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[TapChanger] CHECK CONSTRAINT [FK_TapChanger.TransformerWindingID_TransformerWinding.ObjectID]
GO
/****** Object:  ForeignKey [FK_Terminal.ConductingEquipmentID_ConductingEquipment.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[Terminal]  WITH CHECK ADD  CONSTRAINT [FK_Terminal.ConductingEquipmentID_ConductingEquipment.ObjectID] FOREIGN KEY([ConductingEquipmentID])
REFERENCES [IEC61850].[ConductingEquipment] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[Terminal] CHECK CONSTRAINT [FK_Terminal.ConductingEquipmentID_ConductingEquipment.ObjectID]
GO
/****** Object:  ForeignKey [FK_TransformerWinding.PowerTransformerID_PowerTransformer.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[TransformerWinding]  WITH CHECK ADD  CONSTRAINT [FK_TransformerWinding.PowerTransformerID_PowerTransformer.ObjectID] FOREIGN KEY([PowerTransformerID])
REFERENCES [IEC61850].[PowerTransformer] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[TransformerWinding] CHECK CONSTRAINT [FK_TransformerWinding.PowerTransformerID_PowerTransformer.ObjectID]
GO
/****** Object:  ForeignKey [FK_VoltageLevel.SubstationID_Substation.ObjectID]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[VoltageLevel]  WITH CHECK ADD  CONSTRAINT [FK_VoltageLevel.SubstationID_Substation.ObjectID] FOREIGN KEY([SubstationID])
REFERENCES [IEC61850].[Substation] ([ObjectID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [IEC61850].[VoltageLevel] CHECK CONSTRAINT [FK_VoltageLevel.SubstationID_Substation.ObjectID]
GO
/****** Object:  ForeignKey [FK_VoltageLevelColor_BusbarColoring]    Script Date: 06/13/2013 09:46:36 ******/
ALTER TABLE [IEC61850].[VoltageLevelColor]  WITH CHECK ADD  CONSTRAINT [FK_VoltageLevelColor_BusbarColoring] FOREIGN KEY([BusbarColoringID])
REFERENCES [IEC61850].[BusbarColoring] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [IEC61850].[VoltageLevelColor] CHECK CONSTRAINT [FK_VoltageLevelColor_BusbarColoring]
GO

/***
Create triggers to LogicalNode table, which update the mapping tables when LN is deleted or created
The purpose for these are that IED mapping status can be checked as quickly as possible. 
Changes in PCM model/database update the mapping table in FPN database
***/

CREATE TRIGGER TRG_DaMappingCreate ON [FPN].[DaMapping]
AFTER INSERT AS

BEGIN
	UPDATE [FPN].[IedMapping] SET Status = 'Unknown' WHERE ObjectID in (SELECT IedMappingId FROM INSERTED)
END
GO 

CREATE TRIGGER TRG_DaMappingDelete ON [FPN].[DaMapping]
AFTER DELETE AS

BEGIN
	DELETE FROM [FPN].[MappingStatus] WHERE LnID in (SELECT FpnLnId FROM DELETED)
	UPDATE [FPN].[IedMapping] SET Status = 'Unknown' WHERE ObjectID in (SELECT IedMappingId FROM DELETED)
END
GO 

CREATE TRIGGER TRG_ExcludedDa ON [FPN].[ExcludedDa]
AFTER INSERT, DELETE AS

BEGIN	
	UPDATE [FPN].[IedMapping] SET Status = 'Unknown' WHERE FpnIedName in (SELECT FpnIedName FROM DELETED)
	UPDATE [FPN].[IedMapping] SET Status = 'Unknown' WHERE FpnIedName in (SELECT FpnIedName FROM INSERTED)
	DELETE FROM [FPN].[MappingStatus] WHERE LnID in (SELECT FpnLnID FROM DELETED)
END
GO 

DECLARE @targetDatabase nvarchar(max)
DECLARE @LnIdColumnName nvarchar(10)
DECLARE @IedIdColumnName nvarchar(10)

IF SUBSTRING(db_name(), 1, 9) = 'SCLDS$PCM'
BEGIN    
	SELECT @targetDatabase = '[' + REPLACE(DB_NAME(), 'PCM', 'FPN') + '].'		
	SELECT @LnIdColumnName = 'PcmLnId'
	SELECT @IedIdColumnName = 'PcmIedID'
END
ELSE
BEGIN
	SELECT @targetDatabase = ''
	SELECT @LnIdColumnName = 'FpnLnId'
	SELECT @IedIdColumnName = 'FpnIedID'	
END

DECLARE @DELETE_TRIGGER VARCHAR(MAX)
DECLARE @CREATE_TRIGGER VARCHAR(MAX)

SET @DELETE_TRIGGER = 
'CREATE TRIGGER TRG_LogicalNodeDelete ON [IEC61850].[LogicalNode]
AFTER DELETE AS

BEGIN
	UPDATE {TARGETDBNAME}[FPN].[DaMapping] SET {COLUMNNAME} = NULL WHERE {COLUMNNAME} in (SELECT ObjectID FROM DELETED)
	DELETE FROM [FPN].[ExcludedDa] WHERE FpnLnID in (SELECT ObjectID FROM DELETED)
END'

SET @CREATE_TRIGGER = 
'CREATE TRIGGER TRG_LogicalNodeCreate ON [IEC61850].[LogicalNode]
AFTER INSERT AS

BEGIN
	UPDATE {TARGETDBNAME}[FPN].[IedMapping] SET Status = ''Unknown'' WHERE {COLUMNNAME} in (SELECT IedID FROM INSERTED)
END'

DECLARE @SQL_SCRIPT VARCHAR(MAX)

SET @SQL_SCRIPT = REPLACE(@DELETE_TRIGGER, '{TARGETDBNAME}', @targetDatabase)	
SET @SQL_SCRIPT = REPLACE(@SQL_SCRIPT, '{COLUMNNAME}', @LnIdColumnName)
EXECUTE (@SQL_SCRIPT) 

SET @SQL_SCRIPT = REPLACE(@CREATE_TRIGGER, '{TARGETDBNAME}', @targetDatabase)	
SET @SQL_SCRIPT = REPLACE(@SQL_SCRIPT, '{COLUMNNAME}', @IedIdColumnName)	
EXECUTE (@SQL_SCRIPT)

/* Disable PCM db triggers if FPN db not found */
IF (SUBSTRING(db_name(), 1, 9) = 'SCLDS$PCM' AND db_id(REPLACE(db_name(), 'PCM', 'FPN')) IS NULL)
BEGIN
	ALTER TABLE [IEC61850].[LogicalNode] DISABLE TRIGGER TRG_LogicalNodeCreate
	ALTER TABLE [IEC61850].[LogicalNode] DISABLE TRIGGER TRG_LogicalNodeDelete
END
GO

/* Remember to increase the schema version when schema is changed */
INSERT [IEC61850].[SchemaInformation] ([Key], [Value], [Description]) VALUES (N'SchemaVersion', N'1.3.1.5', N'IEC61850 Database Schema Version')
GO