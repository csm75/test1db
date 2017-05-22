CREATE TABLE [WebApp].[Patient]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[first_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[middle_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[age] [tinyint] NULL,
[dob] [date] NULL,
[ssn] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[temp] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[phone] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[email] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[city_id] [int] NULL,
[gender] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[practice_id] [int] NULL,
[insurance_policy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[trading_partner_id] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[zoho_patient_id] [bigint] NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL,
[deleted_at] [datetime] NULL,
[created_by] [int] NOT NULL,
[updated_by] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[Patient] ADD CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [WebApp].[Patient] ADD CONSTRAINT [FK_Patient_City] FOREIGN KEY ([city_id]) REFERENCES [WebApp].[City] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [WebApp].[Patient] ADD CONSTRAINT [FK_Patient_Practice] FOREIGN KEY ([practice_id]) REFERENCES [AdminApp].[Practice] ([id])
GO
GRANT UPDATE ON  [WebApp].[Patient] TO [sergey]
GO
