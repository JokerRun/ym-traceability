/*
 Navicat Premium Data Transfer

 Source Server         : 内网ym-trace@machine001
 Source Server Type    : SQL Server
 Source Server Version : 14003281
 Source Host           : machine001:51433
 Source Catalog        : ym
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14003281
 File Encoding         : 65001

 Date: 08/04/2020 10:19:46
*/


-- ----------------------------
-- Table structure for HubCommissionTest
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HubCommissionTest]') AND type IN ('U'))
	DROP TABLE [dbo].[HubCommissionTest]
GO

CREATE TABLE [dbo].[HubCommissionTest] (
  [FBillNo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FText8] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FTaskBillNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FFlowCardNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FBatchNO] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [FFSDno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FFSDsb] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[HubCommissionTest] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for HubCustomer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HubCustomer]') AND type IN ('U'))
	DROP TABLE [dbo].[HubCustomer]
GO

CREATE TABLE [dbo].[HubCustomer] (
  [FNumber] varchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FName] varchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [FParentID] int  NOT NULL
)
GO

ALTER TABLE [dbo].[HubCustomer] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for HubFlowCard
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HubFlowCard]') AND type IN ('U'))
	DROP TABLE [dbo].[HubFlowCard]
GO

CREATE TABLE [dbo].[HubFlowCard] (
  [FBillNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FNumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FFlowCardNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FTaskBillNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FBatchNO] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [FFSDno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FFSDsb] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[HubFlowCard] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for HubOrderProduceTask
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HubOrderProduceTask]') AND type IN ('U'))
	DROP TABLE [dbo].[HubOrderProduceTask]
GO

CREATE TABLE [dbo].[HubOrderProduceTask] (
  [FBillNo] varchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FSourceBillNo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FSourceEntryID] smallint  NOT NULL,
  [FNumber] varchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [FQty] decimal(28,10)  NOT NULL,
  [FCheckDate] datetime  NULL
)
GO

ALTER TABLE [dbo].[HubOrderProduceTask] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for HubProduct
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HubProduct]') AND type IN ('U'))
	DROP TABLE [dbo].[HubProduct]
GO

CREATE TABLE [dbo].[HubProduct] (
  [FNumber] varchar(80) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FItemID] int  NOT NULL,
  [FName] varchar(80) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FFullName] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[HubProduct] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for HubProductAttachment
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HubProductAttachment]') AND type IN ('U'))
	DROP TABLE [dbo].[HubProductAttachment]
GO

CREATE TABLE [dbo].[HubProductAttachment] (
  [FNumber] varchar(80) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FFileName] varchar(250) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [url] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[HubProductAttachment] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for HubSaleOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HubSaleOrder]') AND type IN ('U'))
	DROP TABLE [dbo].[HubSaleOrder]
GO

CREATE TABLE [dbo].[HubSaleOrder] (
  [FBillNo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FNumber] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FDate] datetime  NULL
)
GO

ALTER TABLE [dbo].[HubSaleOrder] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for HubWorkOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HubWorkOrder]') AND type IN ('U'))
	DROP TABLE [dbo].[HubWorkOrder]
GO

CREATE TABLE [dbo].[HubWorkOrder] (
  [FID] bigint  IDENTITY(1,1) NOT NULL,
  [FBillNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FStatus] int  NULL,
  [FSourceBillNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FTaskQty] decimal(18,2)  NULL,
  [FPQty] decimal(18,4)  NULL,
  [FTaskCellNumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FTaskCellName] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FTaskDate] datetime  NULL,
  [FNumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FName] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [FWorkNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FDept] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FQty] decimal(18,4)  NULL,
  [FXSbill] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO
SET IDENTITY_INSERT [dbo].HubWorkOrder ON

ALTER TABLE [dbo].[HubWorkOrder] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for LinkSaleOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkSaleOrder]') AND type IN ('U'))
	DROP TABLE [dbo].[LinkSaleOrder]
GO

CREATE TABLE [dbo].[LinkSaleOrder] (
  [FBillNo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [FEntryID] int  NOT NULL,
  [FNumber] varchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [FQty] decimal(28,10)  NULL
)
GO

ALTER TABLE [dbo].[LinkSaleOrder] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Indexes structure for table HubCommissionTest
-- ----------------------------
CREATE NONCLUSTERED INDEX [HubCommissionTest_FFSDno_FFSDsb_index]
ON [dbo].[HubCommissionTest] (
  [FFSDno] ASC,
  [FFSDsb] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table HubCommissionTest
-- ----------------------------
ALTER TABLE [dbo].[HubCommissionTest] ADD CONSTRAINT [PK__HubCommi__D4B74BDD99354A89] PRIMARY KEY CLUSTERED ([FBillNo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table HubCustomer
-- ----------------------------
ALTER TABLE [dbo].[HubCustomer] ADD CONSTRAINT [PK__HubCusto__3EB539189CBF1F44] PRIMARY KEY CLUSTERED ([FNumber])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table HubFlowCard
-- ----------------------------
CREATE NONCLUSTERED INDEX [HubFlowCard_FBillNo_index]
ON [dbo].[HubFlowCard] (
  [FBillNo] ASC
)
GO

CREATE NONCLUSTERED INDEX [HubFlowCard_FFSDno_FFSDsb_index]
ON [dbo].[HubFlowCard] (
  [FFSDno] ASC,
  [FFSDsb] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table HubFlowCard
-- ----------------------------
ALTER TABLE [dbo].[HubFlowCard] ADD CONSTRAINT [PK__HubFlowC__73ADB0C9D07EF25E] PRIMARY KEY CLUSTERED ([FFlowCardNo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table HubOrderProduceTask
-- ----------------------------
CREATE NONCLUSTERED INDEX [HubOrderProduceTask_FBillNo_index]
ON [dbo].[HubOrderProduceTask] (
  [FBillNo] ASC
)
GO

CREATE NONCLUSTERED INDEX [HubOrderProduceTask_FSourceBillNo_FSourceEntryID_index]
ON [dbo].[HubOrderProduceTask] (
  [FSourceBillNo] ASC,
  [FSourceEntryID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table HubProduct
-- ----------------------------
ALTER TABLE [dbo].[HubProduct] ADD CONSTRAINT [PK__HubProdu__3EB53918F7F3DE5C] PRIMARY KEY CLUSTERED ([FNumber])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table HubProductAttachment
-- ----------------------------
ALTER TABLE [dbo].[HubProductAttachment] ADD CONSTRAINT [PK__HubProdu__ABAD75E5B9F9BDE9] PRIMARY KEY CLUSTERED ([FNumber], [FFileName])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table HubSaleOrder
-- ----------------------------
CREATE NONCLUSTERED INDEX [HubSaleOrder_FBillNo_index]
ON [dbo].[HubSaleOrder] (
  [FBillNo] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table HubSaleOrder
-- ----------------------------
ALTER TABLE [dbo].[HubSaleOrder] ADD CONSTRAINT [PK__HubSaleO__D4B74BDD66A5DDAD] PRIMARY KEY CLUSTERED ([FBillNo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for HubWorkOrder
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[HubWorkOrder]', RESEED, 195831)
GO


-- ----------------------------
-- Indexes structure for table HubWorkOrder
-- ----------------------------
CREATE NONCLUSTERED INDEX [HubWorkOrder_FBillNo_index]
ON [dbo].[HubWorkOrder] (
  [FBillNo] ASC
)
GO

CREATE NONCLUSTERED INDEX [HubWorkOrder_FWorkNo_index]
ON [dbo].[HubWorkOrder] (
  [FWorkNo] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table HubWorkOrder
-- ----------------------------
ALTER TABLE [dbo].[HubWorkOrder] ADD CONSTRAINT [PK__HubWorkO__C1BEA5A2F0B92033] PRIMARY KEY CLUSTERED ([FID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table LinkSaleOrder
-- ----------------------------
CREATE NONCLUSTERED INDEX [LinkSaleOrder_FNumber_index]
ON [dbo].[LinkSaleOrder] (
  [FNumber] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table LinkSaleOrder
-- ----------------------------
ALTER TABLE [dbo].[LinkSaleOrder] ADD CONSTRAINT [PK__LinkSale__C3B852C4EB38FEEB] PRIMARY KEY CLUSTERED ([FBillNo], [FEntryID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

