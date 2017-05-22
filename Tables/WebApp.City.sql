CREATE TABLE [WebApp].[City]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[zip_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[city] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[state] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[county] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[City] ADD CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
DENY INSERT ON  [WebApp].[City] TO [deyan]
GO
DENY DELETE ON  [WebApp].[City] TO [deyan]
GO
DENY UPDATE ON  [WebApp].[City] TO [deyan]
GO
DENY INSERT ON  [WebApp].[City] TO [katsiaryna]
GO
DENY DELETE ON  [WebApp].[City] TO [katsiaryna]
GO
DENY UPDATE ON  [WebApp].[City] TO [katsiaryna]
GO
DENY INSERT ON  [WebApp].[City] TO [laraveldev]
GO
DENY DELETE ON  [WebApp].[City] TO [laraveldev]
GO
DENY UPDATE ON  [WebApp].[City] TO [laraveldev]
GO
DENY INSERT ON  [WebApp].[City] TO [milos]
GO
DENY DELETE ON  [WebApp].[City] TO [milos]
GO
DENY UPDATE ON  [WebApp].[City] TO [milos]
GO
DENY INSERT ON  [WebApp].[City] TO [roman]
GO
DENY DELETE ON  [WebApp].[City] TO [roman]
GO
DENY UPDATE ON  [WebApp].[City] TO [roman]
GO
DENY INSERT ON  [WebApp].[City] TO [sergey]
GO
DENY DELETE ON  [WebApp].[City] TO [sergey]
GO
DENY UPDATE ON  [WebApp].[City] TO [sergey]
GO
DENY INSERT ON  [WebApp].[City] TO [vsevolod]
GO
DENY DELETE ON  [WebApp].[City] TO [vsevolod]
GO
DENY UPDATE ON  [WebApp].[City] TO [vsevolod]
GO
