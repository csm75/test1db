CREATE TABLE [WebApp].[PatientAR]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[patient_id] [int] NOT NULL,
[original_invoice] [money] NOT NULL,
[funding_source] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[amount_funded] [money] NOT NULL,
[payment_date] [datetime] NOT NULL,
[balance] [money] NOT NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientAR] ADD CONSTRAINT [PK_PatientAR] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientAR] ADD CONSTRAINT [FK_PatientAR_Patient] FOREIGN KEY ([patient_id]) REFERENCES [WebApp].[Patient] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
