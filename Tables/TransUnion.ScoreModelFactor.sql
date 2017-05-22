CREATE TABLE [TransUnion].[ScoreModelFactor]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[score_model_id] [int] NULL,
[rank] [int] NULL,
[code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[ScoreModelFactor] ADD CONSTRAINT [PK_ScoreModelFactor] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[ScoreModelFactor] ADD CONSTRAINT [FK_ScoreModelFactor_ScoreModel] FOREIGN KEY ([score_model_id]) REFERENCES [TransUnion].[ScoreModel] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
