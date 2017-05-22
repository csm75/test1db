CREATE TABLE [AdminApp].[PasswordResets]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[email] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[token] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[created_at] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [AdminApp].[PasswordResets] ADD CONSTRAINT [PK_PasswordResets] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
