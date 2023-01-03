SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
GO

ALTER TABLE [IEC61850].[LogicalDevice]	
	ADD [LdName] [nvarchar](255) COLLATE Latin1_General_CI_AS NULL;
GO

/* Update the schema version */
UPDATE [IEC61850].[SchemaInformation] SET [Value] =  N'1.3.2.0' WHERE [Key]=N'SchemaVersion'
GO