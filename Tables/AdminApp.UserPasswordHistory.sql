CREATE TABLE [AdminApp].[UserPasswordHistory]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[user_id] [int] NOT NULL,
[password] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdminApp].[UserPasswordHistory] ADD CONSTRAINT [PK_UserPasswordHistory] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [AdminApp].[UserPasswordHistory] ADD CONSTRAINT [FK_UserPasswordHistory_User] FOREIGN KEY ([user_id]) REFERENCES [AdminApp].[User] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
GRANT INSERT ON  [AdminApp].[UserPasswordHistory] TO [katsiaryna]
GO
GRANT DELETE ON  [AdminApp].[UserPasswordHistory] TO [katsiaryna]
GO
GRANT UPDATE ON  [AdminApp].[UserPasswordHistory] TO [katsiaryna]
GO
GRANT INSERT ON  [AdminApp].[UserPasswordHistory] TO [sergey]
GO
GRANT DELETE ON  [AdminApp].[UserPasswordHistory] TO [sergey]
GO
GRANT UPDATE ON  [AdminApp].[UserPasswordHistory] TO [sergey]
GO
