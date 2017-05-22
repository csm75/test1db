CREATE TABLE [WebApp].[PatientScore]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[PatientID] [int] NOT NULL,
[PerpensityScore] [int] NULL,
[PerpensityScoreDate] [datetime] NULL,
[PreQualificationScore] [int] NULL,
[PreQualificationDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientScore] ADD CONSTRAINT [PK_PatientScore] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PatientScore] ADD CONSTRAINT [FK_PatientScore_Patient] FOREIGN KEY ([PatientID]) REFERENCES [WebApp].[Patient] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
