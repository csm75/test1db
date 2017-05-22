CREATE TABLE [TransUnion].[AccountRatingCodes]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[code] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [TransUnion].[AccountRatingCodes] ADD CONSTRAINT [PK_AccountRatingCodes] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
DENY INSERT ON  [TransUnion].[AccountRatingCodes] TO [deyan]
GO
DENY DELETE ON  [TransUnion].[AccountRatingCodes] TO [deyan]
GO
DENY UPDATE ON  [TransUnion].[AccountRatingCodes] TO [deyan]
GO
DENY INSERT ON  [TransUnion].[AccountRatingCodes] TO [laraveldev]
GO
DENY DELETE ON  [TransUnion].[AccountRatingCodes] TO [laraveldev]
GO
DENY UPDATE ON  [TransUnion].[AccountRatingCodes] TO [laraveldev]
GO
DENY INSERT ON  [TransUnion].[AccountRatingCodes] TO [vsevolod]
GO
DENY DELETE ON  [TransUnion].[AccountRatingCodes] TO [vsevolod]
GO
DENY UPDATE ON  [TransUnion].[AccountRatingCodes] TO [vsevolod]
GO
