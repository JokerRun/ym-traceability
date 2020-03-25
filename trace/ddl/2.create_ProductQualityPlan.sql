drop table if exists [dbo].[ProductQualityPlan] ;
CREATE TABLE [dbo].[ProductQualityPlan] (
  [FItemID] int  NOT NULL,
  [FNumber] varchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [FParentID] int  NULL,
  [FName] varchar(80) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FNameEn] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FFullName] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [FModel] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FModelEn] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FSource] int  NULL,
  [FFileName] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [FFileUrl] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [fdata] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductQualityPlan] SET (LOCK_ESCALATION = TABLE)
