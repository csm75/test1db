CREATE TABLE [TransUnion].[CourtType]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[code] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[CourtType] ADD CONSTRAINT [PK_CourtType] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
DENY INSERT ON  [TransUnion].[CourtType] TO [deyan]
GO
DENY DELETE ON  [TransUnion].[CourtType] TO [deyan]
GO
DENY UPDATE ON  [TransUnion].[CourtType] TO [deyan]
GO
DENY INSERT ON  [TransUnion].[CourtType] TO [laraveldev]
GO
DENY DELETE ON  [TransUnion].[CourtType] TO [laraveldev]
GO
DENY UPDATE ON  [TransUnion].[CourtType] TO [laraveldev]
GO
DENY INSERT ON  [TransUnion].[CourtType] TO [vsevolod]
GO
DENY DELETE ON  [TransUnion].[CourtType] TO [vsevolod]
GO
DENY UPDATE ON  [TransUnion].[CourtType] TO [vsevolod]
GO
