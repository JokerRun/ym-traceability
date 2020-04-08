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

 Date: 08/04/2020 14:07:09
*/


-- ----------------------------
-- Table structure for fd_cs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fd_cs]') AND type IN ('U'))
	DROP TABLE [dbo].[fd_cs]
GO

CREATE TABLE [dbo].[fd_cs] (
  [PrjKey] nvarchar(24) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [DSKey] int  NULL,
  [CDID] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PrjState] int  NOT NULL,
  [EvalResult] int  NULL,
  [RKey] int  NULL,
  [cdmc] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [operator_name] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [dylx] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [dcxh] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [dcmc] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [scrq] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [scdw] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [dcph] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sbmc] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [qyrq] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [jchj] nvarchar(60) COLLATE Chinese_PRC_CI_AS  NULL,
  [fzdz] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [zzdy] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [fdlx] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [fdfs] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [jljg] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [bzsj] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [jstj] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [dlcs] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [hfsj] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [fdrq] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [jsrq] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [fdkssj] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [fdjssj] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [xxxqs] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [fdts] nvarchar(5) COLLATE Chinese_PRC_CI_AS  NULL,
  [dzys] nvarchar(5) COLLATE Chinese_PRC_CI_AS  NULL,
  [yfws] nvarchar(5) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt1] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt2] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt3] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt4] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt5] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt6] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt7] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt8] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt9] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt10] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt11] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [dch] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [bz] nvarchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [shortcir1] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [shortcir2] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [shortcir3] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [shortcir4] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [shortcir5] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [shortcir6] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [shortcir7] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [shortcir8] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [shortcir9] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [capacity1] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [capacity2] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [capacity3] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [capacity4] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [capacity5] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [capacity6] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [capacity7] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [capacity8] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [capacity9] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NULL,
  [mark] int  NULL,
  [recordnum] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [Comfirmer] nvarchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [ComfirmTime] datetime2(0)  NULL,
  [Evaluater] nvarchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [EvaluateTime] datetime2(0)  NULL,
  [Deleter] nvarchar(80) COLLATE Chinese_PRC_CI_AS  NULL,
  [DelTime] datetime2(0)  NULL,
  [InTime] datetime2(0)  NULL,
  [jyl] real  NULL
)
GO

ALTER TABLE [dbo].[fd_cs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for fd_evolt
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fd_evolt]') AND type IN ('U'))
	DROP TABLE [dbo].[fd_evolt]
GO

CREATE TABLE [dbo].[fd_evolt] (
  [PrjKey] nvarchar(24) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CDID] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [daynum] int  NULL,
  [dy_dm] int  NULL,
  [dy] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt1] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt2] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt3] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt4] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt5] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt6] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt7] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt8] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [volt9] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [daytime] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [cdmc] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[fd_evolt] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for fd_timev
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fd_timev]') AND type IN ('U'))
	DROP TABLE [dbo].[fd_timev]
GO

CREATE TABLE [dbo].[fd_timev] (
  [PrjKey] nvarchar(24) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CDID] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [times] int  NULL,
  [sj] real  NULL,
  [tim_vot1] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [tim_vot2] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [tim_vot3] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [tim_vot4] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [tim_vot5] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [tim_vot6] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [tim_vot7] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [tim_vot8] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [tim_vot9] nvarchar(15) COLLATE Chinese_PRC_CI_AS  NULL,
  [cdmc] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[fd_timev] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for fd_vtime
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fd_vtime]') AND type IN ('U'))
	DROP TABLE [dbo].[fd_vtime]
GO

CREATE TABLE [dbo].[fd_vtime] (
  [PrjKey] nvarchar(24) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CDID] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [dylvl] nvarchar(5) COLLATE Chinese_PRC_CI_AS  NULL,
  [dy] nvarchar(12) COLLATE Chinese_PRC_CI_AS  NULL,
  [time1] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [time2] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [time3] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [time4] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [time5] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [time6] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [time7] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [time8] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [time9] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [cdmc] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[fd_vtime] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Indexes structure for table fd_cs
-- ----------------------------
CREATE NONCLUSTERED INDEX [FDCSCDID]
ON [dbo].[fd_cs] (
  [CDID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table fd_cs
-- ----------------------------
ALTER TABLE [dbo].[fd_cs] ADD CONSTRAINT [PK__fd_cs__14154AAEB443E91D] PRIMARY KEY CLUSTERED ([PrjKey])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table fd_evolt
-- ----------------------------
CREATE NONCLUSTERED INDEX [IndexEVoltCDID]
ON [dbo].[fd_evolt] (
  [CDID] ASC
)
GO

CREATE NONCLUSTERED INDEX [IndexEVoltPrjKey]
ON [dbo].[fd_evolt] (
  [PrjKey] ASC
)
GO


-- ----------------------------
-- Indexes structure for table fd_timev
-- ----------------------------
CREATE NONCLUSTERED INDEX [FK_FK_Ref_TimeV1]
ON [dbo].[fd_timev] (
  [PrjKey] ASC
)
GO

CREATE NONCLUSTERED INDEX [IndexTimeVCDID]
ON [dbo].[fd_timev] (
  [CDID] ASC
)
GO


-- ----------------------------
-- Indexes structure for table fd_vtime
-- ----------------------------
CREATE NONCLUSTERED INDEX [FK_Ref_VTime1]
ON [dbo].[fd_vtime] (
  [PrjKey] ASC
)
GO


-- ----------------------------
-- Foreign Keys structure for table fd_evolt
-- ----------------------------
ALTER TABLE [dbo].[fd_evolt] ADD CONSTRAINT [FK_Ref_EV1] FOREIGN KEY ([PrjKey]) REFERENCES [dbo].[fd_cs] ([PrjKey]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table fd_timev
-- ----------------------------
ALTER TABLE [dbo].[fd_timev] ADD CONSTRAINT [FK_FK_Ref_TimeV1] FOREIGN KEY ([PrjKey]) REFERENCES [dbo].[fd_cs] ([PrjKey]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table fd_vtime
-- ----------------------------
ALTER TABLE [dbo].[fd_vtime] ADD CONSTRAINT [FK_Ref_VTime1] FOREIGN KEY ([PrjKey]) REFERENCES [dbo].[fd_cs] ([PrjKey]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

