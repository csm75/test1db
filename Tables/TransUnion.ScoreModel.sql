CREATE TABLE [TransUnion].[ScoreModel]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[financial_clearance_id] [int] NULL,
[code] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[results] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[derogatory_alert] [tinyint] NULL,
[file_inquiries_impacted_score] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[ScoreModel] ADD CONSTRAINT [PK_ScoreModel] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[ScoreModel] ADD CONSTRAINT [FK_ScoreModel_FinancialClearance] FOREIGN KEY ([financial_clearance_id]) REFERENCES [TransUnion].[FinancialClearance] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
