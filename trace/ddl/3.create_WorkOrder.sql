CREATE TABLE [dbo].[WorkOrder] (
                              [FBrNo] varchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FInterID] int  NULL,
                              [FBillNo] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FTranType] smallint  NULL,
                              [FStatus] smallint  NULL,
                              [FMRP] smallint  NULL,
                              [FType] smallint  NULL,
                              [FWorkShop] int  NULL,
                              [FItemID] int  NULL,
                              [FQty] decimal(28,10)  NULL,
                              [FCommitQty] decimal(28,10)  NULL,
                              [FPlanCommitDate] datetime  NULL,
                              [FPlanFinishDate] datetime  NULL,
                              [FConveyerID] int  NULL,
                              [FCommitDate] datetime  NULL,
                              [FCheckerID] int  NULL,
                              [FCheckDate] datetime  NULL,
                              [FRequesterID] int  NULL,
                              [FBillerID] int  NULL,
                              [FSourceEntryID] smallint  NULL,
                              [FClosed] smallint  NULL,
                              [FNote] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FUnitID] int  NULL,
                              [FAuxCommitQty] decimal(28,10)  NULL,
                              [FAuxQty] decimal(28,10)  NULL,
                              [FOrderInterID] int  NULL,
                              [FPPOrderInterID] int  NULL,
                              [FParentInterID] int  NULL,
                              [FCancellation] bit  NULL,
                              [FSupplyID] int  NULL,
                              [FQtyFinish] decimal(28,10)  NULL,
                              [FQtyScrap] decimal(28,10)  NULL,
                              [FQtyForItem] decimal(28,10)  NULL,
                              [FQtyLost] decimal(28,10)  NULL,
                              [FPlanIssueDate] datetime  NULL,
                              [FRoutingID] int  NULL,
                              [FStartDate] datetime  NULL,
                              [FFinishDate] datetime  NULL,
                              [FAuxQtyFinish] decimal(28,10)  NULL,
                              [FAuxQtyScrap] decimal(28,10)  NULL,
                              [FAuxQtyForItem] decimal(28,10)  NULL,
                              [FAuxQtyLost] decimal(28,10)  NULL,
                              [FMrpClosed] int  NULL,
                              [FBomInterID] int  NULL,
                              [FQtyPass] decimal(28,10)  NULL,
                              [FAuxQtyPass] decimal(28,10)  NULL,
                              [FQtyBack] decimal(28,10)  NULL,
                              [FAuxQtyBack] decimal(28,10)  NULL,
                              [FFinishTime] decimal(28,10)  NULL,
                              [FReadyTIme] decimal(28,10)  NULL,
                              [FPowerCutTime] decimal(28,10)  NULL,
                              [FFixTime] decimal(28,10)  NULL,
                              [FWaitItemTime] decimal(28,10)  NULL,
                              [FWaitToolTime] decimal(28,10)  NULL,
                              [FTaskID] int  NULL,
                              [FWorkTypeID] int  NULL,
                              [FCostObjID] int  NULL,
                              [FStockQty] decimal(28,10)  NULL,
                              [FAuxStockQty] decimal(28,10)  NULL,
                              [FSuspend] bit  NULL,
                              [FProjectNO] int  NULL,
                              [FProductionLineID] int  NULL,
                              [FReleasedQty] decimal(28,10)  NULL,
                              [FReleasedAuxQty] decimal(28,10)  NULL,
                              [FUnScheduledQty] decimal(28,10)  NULL,
                              [FUnScheduledAuxQty] decimal(28,10)  NULL,
                              [FSubEntryID] int  NULL,
                              [FScheduleID] int  NULL,
                              [FPlanOrderInterID] int  NULL,
                              [FProcessPrice] decimal(28,10)  NULL,
                              [FProcessFee] decimal(28,10)  NULL,
                              [FGMPBatchNo] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FGMPCollectRate] decimal(28,10)  NULL,
                              [FGMPItemBalance] decimal(28,10)  NULL,
                              [FGMPBulkQty] decimal(28,10)  NULL,
                              [FCustID] int  NULL,
                              [FMultiCheckLevel1] int  NULL,
                              [FMultiCheckLevel2] int  NULL,
                              [FMultiCheckLevel3] int  NULL,
                              [FMultiCheckLevel4] int  NULL,
                              [FMultiCheckLevel5] int  NULL,
                              [FMultiCheckLevel6] int  NULL,
                              [FMultiCheckDate1] datetime  NULL,
                              [FMultiCheckDate2] datetime  NULL,
                              [FMultiCheckDate3] datetime  NULL,
                              [FMultiCheckDate4] datetime  NULL,
                              [FMultiCheckDate5] datetime  NULL,
                              [FMultiCheckDate6] datetime  NULL,
                              [FCurCheckLevel] int  NULL,
                              [FMRPLockFlag] int  NULL,
                              [FHandworkClose] int  NULL,
                              [FConfirmerID] int  NULL,
                              [FConfirmDate] datetime  NULL,
                              [FInHighLimit] decimal(28,10)  NULL,
                              [FInHighLimitQty] decimal(28,10)  NULL,
                              [FAuxInHighLimitQty] decimal(28,10)  NULL,
                              [FInLowLimit] decimal(28,10)  NULL,
                              [FInLowLimitQty] decimal(28,10)  NULL,
                              [FAuxInLowLimitQty] decimal(28,10)  NULL,
                              [FChangeTimes] int  NULL,
                              [FCheckCommitQty] decimal(28,10)  NULL,
                              [FAuxCheckCommitQty] decimal(28,10)  NULL,
                              [FCloseDate] datetime  NULL,
                              [FPlanConfirmed] int  NULL,
                              [FPlanMode] int  NULL,
                              [FMTONo] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FPrintCount] int  NULL,
                              [FFinClosed] int  NULL,
                              [FFinCloseer] int  NULL,
                              [FFinClosedate] datetime  NULL,
                              [FStockFlag] int  NULL,
                              [FStartFlag] int  NULL,
                              [FVchBillNo] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FVchInterID] int  NULL,
                              [FCardClosed] int  NULL,
                              [FHRReadyTime] decimal(23,10)  NULL,
                              [FPlanCategory] int  NULL,
                              [FBomCategory] int  NULL,
                              [FSourceTranType] int  NULL,
                              [FSourceInterId] int  NULL,
                              [FSourceBillNo] nvarchar(510) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FReprocessedAuxQty] decimal(23,10)  NULL,
                              [FReprocessedQty] decimal(23,10)  NULL,
                              [FSelDiscardStockInAuxQty] decimal(23,10)  NULL,
                              [FSelDiscardStockInQty] decimal(23,10)  NULL,
                              [FDiscardStockInAuxQty] decimal(23,10)  NULL,
                              [FDiscardStockInQty] decimal(23,10)  NULL,
                              [FSampleBreakAuxQty] decimal(23,10)  NULL,
                              [FSampleBreakQty] decimal(23,10)  NULL,
                              [FHeadSelfJ0194] int  NULL,
                              [FHeadSelfJ0195] int  NULL,
                              [FHeadSelfJ0196] int  NULL,
                              [FHeadSelfJ0197] decimal(28,10)  NULL,
                              [FHeadSelfJ0198] decimal(28,10)  NULL,
                              [FHeadSelfJ0199] int  NULL,
                              [FHeadSelfJ01100] int  NULL,
                              [FHeadSelfJ01101] int  NULL,
                              [FHeadSelfJ01102] int  NULL,
                              [FHeadSelfJ01103] int  NULL,
                              [FHeadSelfJ01104] decimal(28,10)  NULL,
                              [FHeadSelfJ01105] decimal(28,10)  NULL,
                              [FHeadSelfJ01106] decimal(28,10)  NULL,
                              [FHeadSelfJ01107] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FHeadSelfJ01108] int  NULL,
                              [FHeadSelfJ01109] int  NULL,
                              [FHeadSelfJ01110] int  NULL,
                              [FHeadSelfJ01111] int  NULL,
                              [FHeadSelfJ01112] int  NULL,
                              [FHeadSelfJ01113] int  NULL,
                              [FHeadSelfJ01114] int  NULL,
                              [FHeadSelfJ01115] int  NULL,
                              [FHeadSelfJ01116] int  NULL,
                              [FHeadSelfJ01117] decimal(28,10)  NULL,
                              [FHeadSelfJ01118] int  NULL,
                              [FHeadSelfJ01119] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FHeadSelfJ01120] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FHeadSelfJ01121] datetime  NULL,
                              [FHeadSelfJ01122] decimal(28,10)  NULL,
                              [FHeadSelfJ01123] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FHeadSelfJ01124] int  NULL,
                              [FHeadSelfJ01125] int  NULL,
                              [FHeadSelfJ01127] int  NULL,
                              [FConnectFlag] smallint  NULL,
                              [FHeadSelfJ01128] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FHeadSelfJ01126] decimal(28,10)  NULL,
                              [FHeadSelfJ01129] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FHeadSelfJ01130] decimal(28,10)  NULL,
                              [FHeadSelfJ01131] decimal(28,10)  NULL,
                              [FHeadSelfJ01132] int  NULL,
                              [FHeadSelfJ01133] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FHeadSelfJ01134] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FHeadSelfJ01137] decimal(28,10)  NULL,
                              [FHeadSelfJ01138] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FHeadSelfJ01139] int  NULL,
                              [FHeadSelfJ01140] decimal(28,10)  NULL,
                              [FHeadSelfJ01135] datetime  NULL,
                              [FHeadSelfJ01141] int  NULL,
                              [FHeadSelfJ01143] int  NULL,
                              [FHeadSelfJ01145] decimal(28,10)  NULL,
                              [FHeadSelfJ01146] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
                              [FHeadSelfJ01147] int  NULL,
                              [FHeadSelfJ01148] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
                              CONSTRAINT [PK_ICMO] PRIMARY KEY CLUSTERED ([FInterID])
                                  WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
                                  ON [PRIMARY]
)
    ON [PRIMARY]
GO