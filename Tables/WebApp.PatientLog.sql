CREATE TABLE [WebApp].[PatientLog]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[patient_id] [int] NOT NULL,
[prequalify] [tinyint] NOT NULL,
[prequalify_amount] [money] NOT NULL,
[funding_source] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientLog] ADD CONSTRAINT [PK_PatientLog] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientLog] ADD CONSTRAINT [FK_PatientLog_Patient] FOREIGN KEY ([patient_id]) REFERENCES [WebApp].[Patient] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
