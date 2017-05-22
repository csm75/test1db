CREATE TABLE [AdminApp].[HealthProviders]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[npi] [int] NOT NULL,
[full_name] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[we_pay_key] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [AdminApp].[HealthProviders] ADD CONSTRAINT [PK_HealthProviders] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IDX_HealthProviders_NPI] ON [AdminApp].[HealthProviders] ([npi]) ON [PRIMARY]
GO
