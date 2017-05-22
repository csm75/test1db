CREATE TABLE [AdminApp].[AdminValues]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[key] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[value] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [AdminApp].[AdminValues] ADD CONSTRAINT [PK_AdminValues] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
