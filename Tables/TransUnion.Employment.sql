CREATE TABLE [TransUnion].[Employment]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[financial_clearance_id] [int] NULL,
[employer] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[occupation] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[date_hired] [date] NULL,
[date_terminated] [date] NULL,
[duration] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[address] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[phone] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[date_on_file_since] [date] NULL,
[date_effective] [date] NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[Employment] ADD CONSTRAINT [PK_Employment] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[Employment] ADD CONSTRAINT [FK_Employment_FinancialClearance] FOREIGN KEY ([financial_clearance_id]) REFERENCES [TransUnion].[FinancialClearance] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
