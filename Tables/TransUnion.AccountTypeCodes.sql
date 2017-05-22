CREATE TABLE [TransUnion].[AccountTypeCodes]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[code] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[AccountTypeCodes] ADD CONSTRAINT [PK_AccountTypeCodes] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
DENY INSERT ON  [TransUnion].[AccountTypeCodes] TO [deyan]
GO
DENY DELETE ON  [TransUnion].[AccountTypeCodes] TO [deyan]
GO
DENY UPDATE ON  [TransUnion].[AccountTypeCodes] TO [deyan]
GO
DENY INSERT ON  [TransUnion].[AccountTypeCodes] TO [laraveldev]
GO
DENY DELETE ON  [TransUnion].[AccountTypeCodes] TO [laraveldev]
GO
DENY UPDATE ON  [TransUnion].[AccountTypeCodes] TO [laraveldev]
GO
DENY INSERT ON  [TransUnion].[AccountTypeCodes] TO [vsevolod]
GO
DENY DELETE ON  [TransUnion].[AccountTypeCodes] TO [vsevolod]
GO
DENY UPDATE ON  [TransUnion].[AccountTypeCodes] TO [vsevolod]
GO
