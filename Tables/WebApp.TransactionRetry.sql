CREATE TABLE [WebApp].[TransactionRetry]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[transaction_id] [int] NOT NULL,
[retry_failed] [tinyint] NOT NULL,
[message] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[created_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[TransactionRetry] ADD CONSTRAINT [PK_TransactionRetry] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[TransactionRetry] ADD CONSTRAINT [FK_TransactionRetry_Transaction] FOREIGN KEY ([transaction_id]) REFERENCES [WebApp].[Transaction] ([id])
GO
