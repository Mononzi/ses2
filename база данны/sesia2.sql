USE [Hrebtov]
GO
/****** Object:  Table [dbo].[Абоненты]    Script Date: 23.12.2021 12:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абоненты](
	[Код_абонента] [int] NOT NULL,
	[НомерАбонента] [int] NULL,
	[ФИО] [nvarchar](50) NULL,
	[Адрес] [nvarchar](50) NULL,
	[Номер_договора] [int] NULL,
 CONSTRAINT [PK_Абоненты] PRIMARY KEY CLUSTERED 
(
	[Код_абонента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Город]    Script Date: 23.12.2021 12:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Город](
	[Код_города] [int] NOT NULL,
	[Стоимость] [int] NULL,
	[Название_города] [nvarchar](50) NULL,
 CONSTRAINT [PK_Город] PRIMARY KEY CLUSTERED 
(
	[Код_города] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Звонки]    Script Date: 23.12.2021 12:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Звонки](
	[Код_разговора] [int] NOT NULL,
	[Код_Абонента] [int] NULL,
	[Код_города] [int] NULL,
	[Дата_разговора] [date] NULL,
	[Время_разговора] [int] NULL,
	[Оплата] [nvarchar](50) NULL,
 CONSTRAINT [PK_Разговоры] PRIMARY KEY CLUSTERED 
(
	[Код_разговора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тариф]    Script Date: 23.12.2021 12:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тариф](
	[Стоимость] [int] NOT NULL,
	[Оплата] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тел_абонентов]    Script Date: 23.12.2021 12:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тел_абонентов](
	[Телефон] [int] NULL,
	[Код_разговора] [nchar](10) NULL,
	[Номер_телефона] [nvarchar](50) NULL,
	[Номер_договора] [nvarchar](50) NULL,
	[Дата_Устоновки] [date] NULL
) ON [PRIMARY]
GO
