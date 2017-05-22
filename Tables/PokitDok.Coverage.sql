CREATE TABLE [PokitDok].[Coverage]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[patient_id] [int] NOT NULL,
[limitations_benefit_amount] [money] NULL,
[deductibles_benefit_amount] [money] NULL,
[non_covered_benefit_amount] [money] NULL,
[active] [tinyint] NULL,
[coverage_details_status] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[created_at] [datetime] NULL,
[updated_at] [datetime] NULL,
[npi] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[propensity_score] [decimal] (5, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [PokitDok].[Coverage] ADD CONSTRAINT [PK_Coverage] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [PokitDok].[Coverage] ADD CONSTRAINT [FK_Coverage_Patient] FOREIGN KEY ([patient_id]) REFERENCES [WebApp].[Patient] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
GRANT UPDATE ON  [PokitDok].[Coverage] TO [sergey]
GO
