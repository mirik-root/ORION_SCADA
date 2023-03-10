SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
GO

/* Update the schema version */
UPDATE [IEC61850].[SchemaInformation] SET [Value] =  N'1.3.0.2' WHERE [Key]=N'SchemaVersion'
GO

/* New columns */
ALTER TABLE [IEC61850].[IED]
    ADD [Services_NameLength] INT NULL;
GO
