CREATE TABLE [WebApp].[PaymentFrequency]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [WebApp].[PaymentFrequency] ADD CONSTRAINT [PK_PaymentFrequency] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
DENY INSERT ON  [WebApp].[PaymentFrequency] TO [deyan]
GO
DENY DELETE ON  [WebApp].[PaymentFrequency] TO [deyan]
GO
DENY UPDATE ON  [WebApp].[PaymentFrequency] TO [deyan]
GO
DENY INSERT ON  [WebApp].[PaymentFrequency] TO [katsiaryna]
GO
DENY DELETE ON  [WebApp].[PaymentFrequency] TO [katsiaryna]
GO
DENY UPDATE ON  [WebApp].[PaymentFrequency] TO [katsiaryna]
GO
DENY INSERT ON  [WebApp].[PaymentFrequency] TO [milos]
GO
DENY DELETE ON  [WebApp].[PaymentFrequency] TO [milos]
GO
DENY UPDATE ON  [WebApp].[PaymentFrequency] TO [milos]
GO
DENY INSERT ON  [WebApp].[PaymentFrequency] TO [roman]
GO
DENY DELETE ON  [WebApp].[PaymentFrequency] TO [roman]
GO
DENY UPDATE ON  [WebApp].[PaymentFrequency] TO [roman]
GO
DENY INSERT ON  [WebApp].[PaymentFrequency] TO [sergey]
GO
DENY DELETE ON  [WebApp].[PaymentFrequency] TO [sergey]
GO
DENY UPDATE ON  [WebApp].[PaymentFrequency] TO [sergey]
GO
DENY INSERT ON  [WebApp].[PaymentFrequency] TO [vsevolod]
GO
DENY DELETE ON  [WebApp].[PaymentFrequency] TO [vsevolod]
GO
DENY UPDATE ON  [WebApp].[PaymentFrequency] TO [vsevolod]
GO
