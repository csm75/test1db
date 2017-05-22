CREATE TABLE [WebApp].[PatientAddress]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[patient_id] [int] NOT NULL,
[city_id] [int] NOT NULL,
[address] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[address_extra] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[is_current] [tinyint] NOT NULL CONSTRAINT [DF__PatientAd__is_cu__51BA1E3A] DEFAULT ((0)),
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientAddress] ADD CONSTRAINT [PK_PatientAddress] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientAddress] ADD CONSTRAINT [FK_PatientAddress_City] FOREIGN KEY ([city_id]) REFERENCES [WebApp].[City] ([id])
GO
ALTER TABLE [WebApp].[PatientAddress] ADD CONSTRAINT [FK_PatientAddress_Patient] FOREIGN KEY ([patient_id]) REFERENCES [WebApp].[Patient] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
