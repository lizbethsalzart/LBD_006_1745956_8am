USE [senda]

GO

/****** Object:  StoredProcedure [dbo].[InsChofer]    Script Date: 09/02/2017 09:50:59 ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsChofer]') AND type in (N'P', N'PC'))

BEGIN

EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[InsChofer] @Id int, @Nom varchar(50), @AP varchar(50), @AM varchar(50), @Ed tinyint, @S char(1), @Sueldo money, @Foto image, @Cel varchar(12), @St tinyint

as' 

END

GO

/****** Object:  Table [dbo].[Estado]    Script Date: 09/02/2017 09:51:00 ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

SET ANSI_PADDING ON

GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))

BEGIN

CREATE TABLE [dbo].[Estado](

	[Id_Edo] [int] NOT NULL,

	[NomEdo] [varchar](50) NULL

) ON [PRIMARY]

END

GO

SET ANSI_PADDING OFF

GO

INSERT [dbo].[Estado] ([Id_Edo], [NomEdo]) VALUES (1, N'Aguascalientes')

INSERT [dbo].[Estado] ([Id_Edo], [NomEdo]) VALUES (2, N'Baja California Norte')

INSERT [dbo].[Estado] ([Id_Edo], [NomEdo]) VALUES (3, N'Baja california sur')

INSERT [dbo].[Estado] ([Id_Edo], [NomEdo]) VALUES (20, N'Nuevo León')

INSERT [dbo].[Estado] ([Id_Edo], [NomEdo]) VALUES (31, N'Zacatecas')

INSERT [dbo].[Estado] ([Id_Edo], [NomEdo]) VALUES (28, N'Tamaulipas')

/****** Object:  Table [dbo].[Destino]    Script Date: 09/02/2017 09:51:00 ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

SET ANSI_PADDING ON

GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Destino]') AND type in (N'U'))

BEGIN

CREATE TABLE [dbo].[Destino](

	[Id_Destino] [int] NOT NULL,

	[Id_Chofer] [int] NOT NULL,

	[NomDestino] [varchar](100) NULL,

	[Estado] [tinyint] NULL,

	[Municipio] [tinyint] NULL,

	[CostoBoleto] [money] NULL,

	[Stat] [tinyint] NULL

) ON [PRIMARY]

END

GO

SET ANSI_PADDING OFF

GO

INSERT [dbo].[Destino] ([Id_Destino], [Id_Chofer], [NomDestino], [Estado], [Municipio], [CostoBoleto], [Stat]) VALUES (1, 1, N'Tampico', 28, 1, 2000.0000, 1)

/****** Object:  Table [dbo].[Cliente]    Script Date: 09/02/2017 09:51:00 ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

SET ANSI_PADDING ON

GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))

BEGIN

CREATE TABLE [dbo].[Cliente](

	[Id_cliente] [int] NOT NULL,

	[NomCliente] [varchar](50) NULL,

	[Edad] [tinyint] NULL,

	[Sexo] [char](1) NULL,

	[Id_Ciudad] [int] NOT NULL,

	[Id_Estado] [int] NOT NULL,

	[Id_tiposangre] [tinyint] NOT NULL,

	[Stat] [tinyint] NULL

) ON [PRIMARY]

END

GO

SET ANSI_PADDING OFF

GO

INSERT [dbo].[Cliente] ([Id_cliente], [NomCliente], [Edad], [Sexo], [Id_Ciudad], [Id_Estado], [Id_tiposangre], [Stat]) VALUES (1, N'Juan Antonio Luna', 23, N'M', 1, 1, 1, 1)

/****** Object:  Table [dbo].[Ciudad]    Script Date: 09/02/2017 09:51:00 ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

SET ANSI_PADDING ON

GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ciudad]') AND type in (N'U'))

BEGIN

CREATE TABLE [dbo].[Ciudad](

	[Id_Estado] [int] NOT NULL,

	[Id_Ciudad] [int] NOT NULL,

	[NomCd] [varchar](50) NULL

) ON [PRIMARY]

END

GO

SET ANSI_PADDING OFF

GO

INSERT [dbo].[Ciudad] ([Id_Estado], [Id_Ciudad], [NomCd]) VALUES (1, 1, N'tangamandapio')

INSERT [dbo].[Ciudad] ([Id_Estado], [Id_Ciudad], [NomCd]) VALUES (1, 2, N'taraumaras')

INSERT [dbo].[Ciudad] ([Id_Estado], [Id_Ciudad], [NomCd]) VALUES (20, 1, N'Agualeguas')

INSERT [dbo].[Ciudad] ([Id_Estado], [Id_Ciudad], [NomCd]) VALUES (20, 2, N'San Nicolas')

INSERT [dbo].[Ciudad] ([Id_Estado], [Id_Ciudad], [NomCd]) VALUES (20, 3, N'Monterrey')

INSERT [dbo].[Ciudad] ([Id_Estado], [Id_Ciudad], [NomCd]) VALUES (28, 1, N'Tampico')

INSERT [dbo].[Ciudad] ([Id_Estado], [Id_Ciudad], [NomCd]) VALUES (28, 2, N'Reynosa')

INSERT [dbo].[Ciudad] ([Id_Estado], [Id_Ciudad], [NomCd]) VALUES (28, 3, N'Camargo')

/****** Object:  Table [dbo].[Chofer]    Script Date: 09/02/2017 09:51:00 ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

SET ANSI_PADDING ON

GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Chofer]') AND type in (N'U'))

BEGIN

CREATE TABLE [dbo].[Chofer](

	[Id_Chofer] [int] NOT NULL,

	[NomChofer] [varchar](50) NULL,

	[ApPat] [varchar](50) NULL,

	[ApMat] [varchar](50) NULL,

	[Edad] [tinyint] NULL,

	[Sexo] [char](1) NULL,

	[Sueldo] [money] NULL,

	[Foto] [image] NULL,

	[Celular] [varchar](13) NULL,

	[Stat] [tinyint] NULL

) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

END

GO

SET ANSI_PADDING OFF

GO

INSERT [dbo].[Chofer] ([Id_Chofer], [NomChofer], [ApPat], [ApMat], [Edad], [Sexo], [Sueldo], [Foto], [Celular], [Stat]) VALUES (1, N'Pedro', N'Salazar', N'Garcia', 38, N'M', 25000.0000, 0x, N'+8115657174', 1)

INSERT [dbo].[Chofer] ([Id_Chofer], [NomChofer], [ApPat], [ApMat], [Edad], [Sexo], [Sueldo], [Foto], [Celular], [Stat]) VALUES (2, N'Raul', N'Gonzalez', N'Rodriguez', 45, N'M', 50000.0000, 0x, N'+8115648571', 1)

INSERT [dbo].[Chofer] ([Id_Chofer], [NomChofer], [ApPat], [ApMat], [Edad], [Sexo], [Sueldo], [Foto], [Celular], [Stat]) VALUES (9, N'Julio', N'Mtz', N'Rdz', 30, N'M', 89000.0000, 0x, N'1234567890', 1)

/****** Object:  Table [dbo].[boleto]    Script Date: 09/02/2017 09:51:00 ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[boleto]') AND type in (N'U'))

BEGIN

CREATE TABLE [dbo].[boleto](

	[Id_Boleto] [int] NOT NULL,

	[Id_Cliente] [int] NOT NULL,

	[Id_Destino] [int] NOT NULL,

	[Id_Chofer] [int] NOT NULL,

	[Id_Estado] [int] NOT NULL,

	[Id_Ciudad] [int] NOT NULL,

	[Precio] [money] NULL,

	[FechaCompra] [date] NULL

) ON [PRIMARY]

END

GO

INSERT [dbo].[boleto] ([Id_Boleto], [Id_Cliente], [Id_Destino], [Id_Chofer], [Id_Estado], [Id_Ciudad], [Precio], [FechaCompra]) VALUES (19827, 1, 1, 1, 28, 1, 875.0000, CAST(0x073B0B00 AS Date))

/****** Object:  StoredProcedure [dbo].[selectchofer]    Script Date: 09/02/2017 09:50:59 ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[selectchofer]') AND type in (N'P', N'PC'))

BEGIN

EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[selectchofer]

as

select * from Chofer' 

END

GO

/****** Object:  StoredProcedure [dbo].[selChoferID]    Script Date: 09/02/2017 09:50:59 ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[selChoferID]') AND type in (N'P', N'PC'))

BEGIN

EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[selChoferID] @Idc integer

as

select * from Chofer

where ID_Chofer = @Idc' 

END

GO

/****** Object:  StoredProcedure [dbo].[InsertChofer]    Script Date: 09/02/2017 09:50:59 ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertChofer]') AND type in (N'P', N'PC'))

BEGIN

EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[InsertChofer] @Id int, @Nom varchar(50), @AP varchar(50), @AM varchar(50), @Ed tinyint, @S char(1), @Sueldo money, @Foto image, @Cel varchar(12), @St tinyint

as

insert into Chofer values (

@Id, @Nom, @AP, @AM, @Ed, @S, @Sueldo, @Foto, @Cel, @St)' 

END

GO