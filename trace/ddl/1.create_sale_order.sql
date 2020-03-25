CREATE TABLE [dbo].[SaleOrder] (
  [FBillNo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FEntryID] int  NULL,
  [FInterID] int  NOT NULL,
  [FNumber] varchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [FItemID] varchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [Fauxqty] decimal(28,10)  NULL,
  [Fauxprice] decimal(28,10)  NULL,
  [Famount] decimal(20,2)  NULL,
  [FQty] decimal(28,10)  NULL,
  [FStockQty] decimal(28,10)  NULL,
  [FCheckerID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FCheckFlag] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FClosed] varchar(2) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FCommitDate] datetime  NULL,
  [FBillerID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FCustID] varchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [Fdate] datetime  NULL,
  [FDeptID] varchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [FShortNumber] varchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [FSourceBillNo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FUnitGroupID] varchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [FUnitID] varchar(80) COLLATE Chinese_PRC_CI_AS  NULL
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SaleOrder] SET (LOCK_ESCALATION = TABLE)