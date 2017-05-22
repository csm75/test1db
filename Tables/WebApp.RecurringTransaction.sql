CREATE TABLE [WebApp].[RecurringTransaction]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[patient_id] [int] NOT NULL,
[payment_account_id] [int] NOT NULL,
[amount] [money] NOT NULL,
[start_date] [date] NOT NULL,
[end_date] [date] NULL,
[next_execute_date] [date] NOT NULL,
[frequency_id] [int] NOT NULL,
[agreement_number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[verbal_auth_disclosure] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[number_of_transactions] [int] NOT NULL CONSTRAINT [DF__Recurring__numbe__1F2E9E6D] DEFAULT ((0)),
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL,
[created_by] [int] NOT NULL,
[updated_by] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[RecurringTransaction] ADD CONSTRAINT [PK_RecurringTransaction] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[RecurringTransaction] ADD CONSTRAINT [FK_RecurringTransaction_Patient] FOREIGN KEY ([patient_id]) REFERENCES [WebApp].[Patient] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [WebApp].[RecurringTransaction] ADD CONSTRAINT [FK_RecurringTransaction_PaymentFrequency] FOREIGN KEY ([frequency_id]) REFERENCES [WebApp].[PaymentFrequency] ([ID])
GO
ALTER TABLE [WebApp].[RecurringTransaction] ADD CONSTRAINT [FK_RecurringTransaction_WePayAccount] FOREIGN KEY ([payment_account_id]) REFERENCES [WePay].[Account] ([id])
GO
GRANT UPDATE ON  [WebApp].[RecurringTransaction] TO [katsiaryna]
GO
