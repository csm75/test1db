CREATE TABLE [WebApp].[Transaction]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[patient_id] [int] NOT NULL,
[payment_account_id] [int] NOT NULL,
[amount] [money] NOT NULL,
[state] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[wp_card_id] [bigint] NOT NULL,
[wp_checkout_id] [bigint] NOT NULL,
[recurring_transaction_id] [int] NULL,
[agreement_number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[verbal_auth_disclosure] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL,
[created_by] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[Transaction] ADD CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[Transaction] ADD CONSTRAINT [FK_Transaction_Patient] FOREIGN KEY ([patient_id]) REFERENCES [WebApp].[Patient] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [WebApp].[Transaction] ADD CONSTRAINT [FK_Transaction_RecurringTransaction] FOREIGN KEY ([recurring_transaction_id]) REFERENCES [WebApp].[RecurringTransaction] ([id])
GO
ALTER TABLE [WebApp].[Transaction] ADD CONSTRAINT [FK_Transaction_WePayAccount] FOREIGN KEY ([payment_account_id]) REFERENCES [WePay].[Account] ([id])
GO
