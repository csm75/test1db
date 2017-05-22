CREATE TABLE [WePay].[Account]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[access_token] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[account_id] [bigint] NULL,
[account_state] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[user_id] [bigint] NULL,
[user_state] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[practice_id] [int] NOT NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL,
[deleted_at] [datetime] NULL CONSTRAINT [DF__Account__deleted__2022C2A6] DEFAULT (NULL),
[created_by] [int] NULL,
[updated_by] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [WePay].[Account] ADD CONSTRAINT [PK_WePayAccount] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [WePay].[Account] ADD CONSTRAINT [FK_WePayAccount_Practice] FOREIGN KEY ([practice_id]) REFERENCES [AdminApp].[Practice] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
