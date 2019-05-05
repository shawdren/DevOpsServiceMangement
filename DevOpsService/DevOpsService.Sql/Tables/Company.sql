IF EXISTS ( SELECT 1 FROM  sysobjects  WHERE   name = 'Sys_Company' AND type = 'U' )
DROP TABLE Sys_Company;
GO
CREATE TABLE [dbo].[Sys_Company](
	[ID] [uniqueidentifier] primary key NOT NULL,
	[CompanyName] [nvarchar](256) NOT NULL,	
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Company', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Company', @level2type=N'COLUMN',@level2name=N'CompanyName'
GO