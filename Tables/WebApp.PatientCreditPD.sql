CREATE TABLE [WebApp].[PatientCreditPD]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[patient_id] [int] NOT NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientCreditPD] ADD CONSTRAINT [PK_PatientCreditPD] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientCreditPD] ADD CONSTRAINT [FK_PatientCreditPD_Patient] FOREIGN KEY ([patient_id]) REFERENCES [WebApp].[Patient] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
