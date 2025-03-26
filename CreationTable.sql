-- ====================================================
-- Création Table aéroport
-- ====================================================
CREATE TABLE [dbo].[Aeroport] (
    [code_IATA]         INT         IDENTITY (1, 1) NOT NULL,
    [ville]             VARCHAR (1) NOT NULL,
    [pays]              VARCHAR (1) NOT NULL,
    [distance_montreal] INT         NOT NULL,
    CONSTRAINT [PK_Aéroport] PRIMARY KEY CLUSTERED ([code_IATA] ASC)
);

-- ====================================================
-- Création Table Avion
-- ====================================================

CREATE TABLE [dbo].[Avion] (
    [avion_id] INT         IDENTITY (1, 1) NOT NULL,
    [image]    VARCHAR (1) NOT NULL,
    [modele]   VARCHAR (1) NOT NULL,
    [capacite] INT         NOT NULL,
    CONSTRAINT [PK_Avion] PRIMARY KEY CLUSTERED ([avion_id] ASC)
);

CREATE TABLE [dbo].[Vol] (
    [vol_id]              INT         NOT NULL,
    [prix]                FLOAT (53)  NOT NULL,
    [modelAvion]          VARCHAR (1) NOT NULL,
    [disponibilite]       VARCHAR (1) NOT NULL,
    [nb_place]            INT         NOT NULL,
    [FK__Aeroport_arrive] INT         NOT NULL,
    [FK_Aeroport_depart]  INT         NOT NULL,
    [FK_avion]            INT         NOT NULL,
    CONSTRAINT [PK_Vol] PRIMARY KEY CLUSTERED ([vol_id] ASC),
    CONSTRAINT [AeroportArrivee] FOREIGN KEY ([FK__Aeroport_arrive]) REFERENCES [dbo].[Aeroport] ([id_aeroport]),
    CONSTRAINT [AeroportDepart] FOREIGN KEY ([FK_Aeroport_depart]) REFERENCES [dbo].[Aeroport] ([id_aeroport]),
    CONSTRAINT [Avion_du_vol] FOREIGN KEY ([FK_avion]) REFERENCES [dbo].[Avion] ([avion_id])
);




