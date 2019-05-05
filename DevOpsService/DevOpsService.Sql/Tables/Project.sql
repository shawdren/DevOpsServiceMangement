IF EXISTS ( SELECT 1 FROM  sysobjects  WHERE   name = 'Sys_Project' AND type = 'U' )
DROP TABLE Sys_Project;
GO
CREATE TABLE [dbo].[Sys_Project](
	[ID] [uniqueidentifier] primary key NOT NULL,
	[CompanyId] [uniqueidentifier] NOT NULL,	
	[ProjectName] [nvarchar](256) NULL,
	[ServiceBeginDate] [datetime] NULL,
	[ServiceEndDate] [datetime] NULL,
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Project', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Project', @level2type=N'COLUMN',@level2name=N'CompanyId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Project', @level2type=N'COLUMN',@level2name=N'ProjectName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Project', @level2type=N'COLUMN',@level2name=N'ServiceBeginDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Project', @level2type=N'COLUMN',@level2name=N'ServiceEndDate'
GO