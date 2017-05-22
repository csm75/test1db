CREATE TABLE [WebApp].[PatientAgreement]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[patient_id] [int] NOT NULL,
[agreement_date] [datetime] NOT NULL,
[agreement_atm] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[processed_date] [datetime] NOT NULL,
[cleared_on_date] [datetime] NOT NULL,
[ach_date] [datetime] NOT NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientAgreement] ADD CONSTRAINT [PK_PatientAgreement] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientAgreement] ADD CONSTRAINT [FK_PatientAgreement_Patient] FOREIGN KEY ([patient_id]) REFERENCES [WebApp].[Patient] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
