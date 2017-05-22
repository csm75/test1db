CREATE TABLE [WebApp].[Lender]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[lender_name] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [WebApp].[Lender] ADD CONSTRAINT [PK_Lender] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
