CREATE TABLE [dbo].[CommissionTest] (
                                        [FID] int  NOT NULL,
                                        [FClassTypeID] int  NOT NULL,
                                        [FBillNo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                        [FBase] int  NOT NULL,
                                        [FText] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                        [FBase1] int  NOT NULL,
                                        [FText1] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                        [FDate] datetime  NULL,
                                        [FDate1] datetime  NULL,
                                        [FBiller] int  NOT NULL,
                                        [FTime] datetime  NULL,
                                        [FUser] int  NOT NULL,
                                        [FTime1] datetime  NULL,
                                        [FText3] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                        [FDate2] datetime  NULL,
                                        [FID_SRC] int  NOT NULL,
                                        [FEntryID_SRC] int  NOT NULL,
                                        [FBillNo_SRC] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                        [FClassID_SRC] int  NOT NULL,
                                        [FBase2] int  NOT NULL,
                                        [FBase3] int  NOT NULL,
                                        [FText8] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                        [FBase4] int  NOT NULL,
                                        [FMultiCheckStatus] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                        [FText2] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                        [FInteger] int  NOT NULL
)
    ON [PRIMARY]
GO