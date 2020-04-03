CREATE TABLE [dbo].[CommissionTestEntry] (
                                             [FEntryID] int  IDENTITY(1,1) NOT NULL,
                                             [FID] int  NOT NULL,
                                             [FIndex] int  NOT NULL,
                                             [FText2] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                             [FText4] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                             [FText5] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                             [FDecimal] decimal(23,10)  NOT NULL,
                                             [FText6] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                             [FText7] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                             [FComboBox] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
                                             [FText9] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
    ON [PRIMARY]
GO