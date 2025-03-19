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
-- Création Table Utilisateur
-- ====================================================

CREATE TABLE [dbo].[Utilisateur] (
    [id_utilisateur] INT          IDENTITY (1, 1) NOT NULL,
    [prenom]         VARCHAR (25) NOT NULL,
    [nom]            VARCHAR (25) NOT NULL,
    [mot_de_passe]   VARCHAR (25) NOT NULL,
    CONSTRAINT [PK_Utilisateur] PRIMARY KEY CLUSTERED ([id_utilisateur] ASC)
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
