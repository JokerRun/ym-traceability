CREATE TABLE [dbo].[TaskReportCode] (
                                          [FID] bigint  NOT NULL,
                                          [FReportID] bigint  NULL,
                                          [FCode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
                                          [FQty] decimal(18,4)  NULL,
                                          [FItemID] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                          [FUser] varchar(150) COLLATE Chinese_PRC_CI_AS  NULL,
                                          [FDate] datetime  NULL,
                                          [Fstatus] int  NULL,
                                          [FitemName] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                          [FBatch] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
                                          [FNO] int  NULL,
                                          [FYDQty] decimal(18,4)  NULL
)
    ON [PRIMARY]
GO