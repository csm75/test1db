CREATE TABLE [AdminApp].[CreditCompanies]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[full_name] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [AdminApp].[CreditCompanies] ADD CONSTRAINT [PK_CreditCompanies] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
