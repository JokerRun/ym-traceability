CREATE TABLE [dbo].[FlowCard] (
                                  [FID] bigint  NOT NULL,
                                  [FFlowCardNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                  [FTaskBillNo] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FStatus] int  NULL,
                                  [FQty] decimal(18,4)  NULL,
                                  [FType] int  NULL,
                                  [FCreateDate] datetime  NULL,
                                  [FCreater] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FAlter] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FAlterDate] datetime  NULL,
                                  [FPrintCount] int  NULL,
                                  [FOperNo] int  NULL,
                                  [FSourceLZK] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FDep] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FLLQty] decimal(18,4)  NULL,
                                  [FuseQty] decimal(18,4)  NULL,
                                  [FLqty] decimal(18,4)  NULL,
                                  [FHqty] decimal(18,4)  NULL,
                                  [FCFT] int  NULL,
                                  [Fupdatedate] datetime  NULL,
                                  [Funtil] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FCFTEMP] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FMBS] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FBS] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FLS] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FFBano] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FBZ] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [Ftemplatenumber] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FQR] int  NULL,
                                  [FBatchNO] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FFSDsb] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FFSDno] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FStockID] bigint  NULL,
                                  [FSPID] bigint  NULL,
                                  [FCKStockID] bigint  NULL,
                                  [FCKSPID] bigint  NULL,
                                  [FCKDept] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FJJNUmber] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FJJ_ZYDH] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FJJName] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FIN] int  NULL,
                                  [FOUT] int  NULL,
                                  [Fdepname] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                  [FINstock] int  NULL,
                                  [Finsip] int  NULL
)
    ON [PRIMARY]
GO