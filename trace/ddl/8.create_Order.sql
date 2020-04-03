CREATE TABLE [dbo].[Order] (
                                 [FID] bigint  NOT NULL,
                                 [FBillNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FStatus] int  NULL,
                                 [FImportType] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FSourceType] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FSourceBillNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FSourceID] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FSourceEntryID] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FChildren] int  NULL,
                                 [FChildPQty] decimal(18,2)  NULL,
                                 [FTaskQty] decimal(18,2)  NULL,
                                 [FPQty] decimal(18,4)  NULL,
                                 [FTaskCellNumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FTaskCellName] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FTaskDate] datetime  NULL,
                                 [FTaskCellType] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FTaskLine] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FIsLast] bit  NULL,
                                 [FTaskRTNumber] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FTaskRTName] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FTaskOperNo] int  NULL,
                                 [FTaskOperNumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FTaskOperName] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FPrintQty] decimal(18,2)  NULL,
                                 [FTaskBeginDate] datetime  NULL,
                                 [FTaskBeginTime] datetime  NULL,
                                 [FTaskEndDate] datetime  NULL,
                                 [FTaskEndTime] datetime  NULL,
                                 [FTaskStatus] int  NULL,
                                 [FCloseNumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FCloseDesc] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FCreater] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FCreateDate] datetime  NULL,
                                 [FNumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FName] varchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FWorkNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FDept] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FQty] decimal(18,4)  NULL,
                                 [FBiller] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FDateFrom] datetime  NULL,
                                 [FDateTo] datetime  NULL,
                                 [FFRTNumber] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FFRTName] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [Ffe] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FOperSN] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FOpername] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FOpernumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [Fmodel] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FFQty] decimal(18,4)  NULL,
                                 [FLQty] decimal(18,4)  NULL,
                                 [FDCXH] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FUntil] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FUntilID] int  NULL,
                                 [FZT] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FFK3ZT] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FF1] decimal(18,4)  NULL,
                                 [FBB] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FYLnumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FYLname] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FXSbill] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FFPlanCommitDate] datetime  NULL,
                                 [FFPlanFinishDate] datetime  NULL,
                                 [FFBano] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FCLPC] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FFBasb] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FWXqty] decimal(18,2)  NULL,
                                 [FFSD] decimal(18,4)  NULL,
                                 [FBYB] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FFSDsb] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FFSDno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FFQTY2] decimal(18,2)  NULL,
                                 [FPlanCommitDate] datetime  NULL,
                                 [FFHeadSelfJ01132] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FFHeadSelfJ01133] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FFHeadSelfJ0198] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                 [FCPItemID] bigint  NULL
)
    ON [PRIMARY]
GO