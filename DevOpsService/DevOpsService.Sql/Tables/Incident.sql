IF EXISTS ( SELECT 1 FROM  sysobjects  WHERE   name = 'Sys_Incident' AND type = 'U' )
DROP TABLE Sys_Incident;
GO
CREATE TABLE [dbo].[Sys_Incident](
	[ID] [uniqueidentifier] primary key NOT NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,	
	[SubmitDate] [DateTime] NULL,	
	[IncidentDescription] [nvarchar](1000) NOT NULL,	
	[Status] [nvarchar](256)  NULL,	
	[SubmitUserId] [nvarchar](256) NULL,	
	[ResovledUserId] [nvarchar](256) NULL,	
	[ResovledDate] [DateTime] NULL,	
	[FixResulotion] [nvarchar](1000) NULL,	
	[CreateTime] [datetime] NULL,
    [Creator] [nvarchar](256) NULL,
    [EditTime] [datetime] NULL,
    [Editor] [nvarchar](256) NULL,
	[F1] [nvarchar](256) NULL,
	[F2] [nvarchar](256) NULL,
	[F3] [nvarchar](256) NULL,
	[Enabled] [bit]  NOT NULL,
)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Incident', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Incident', @level2type=N'COLUMN',@level2name=N'ProjectId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提出时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Incident', @level2type=N'COLUMN',@level2name=N'SubmitDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'事件描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Incident', @level2type=N'COLUMN',@level2name=N'IncidentDescription'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Incident', @level2type=N'COLUMN',@level2name=N'Status'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提出人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Incident', @level2type=N'COLUMN',@level2name=N'SubmitUserId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'解决人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Incident', @level2type=N'COLUMN',@level2name=N'ResovledUserId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提出时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Incident', @level2type=N'COLUMN',@level2name=N'ResovledDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'解决方法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Incident', @level2type=N'COLUMN',@level2name=N'FixResulotion'
GO

