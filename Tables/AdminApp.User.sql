CREATE TABLE [AdminApp].[User]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[user_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[password] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[first_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[last_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[email] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[phone] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[remember_token] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[role_id] [smallint] NOT NULL,
[practice_id] [int] NULL,
[claim_md_allow] [tinyint] NULL CONSTRAINT [DF__User__claim_md_a__50C5FA01] DEFAULT ((0)),
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL,
[deleted_at] [datetime] NULL CONSTRAINT [DF__User__deleted_at__370627FE] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [AdminApp].[User] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [AdminApp].[User] ADD CONSTRAINT [AdminApp_User_UQ_user_name] UNIQUE NONCLUSTERED  ([user_name]) ON [PRIMARY]
GO
ALTER TABLE [AdminApp].[User] ADD CONSTRAINT [FK_User_Practice] FOREIGN KEY ([practice_id]) REFERENCES [AdminApp].[Practice] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
GRANT UPDATE ON  [AdminApp].[User] TO [sergey]
GO
