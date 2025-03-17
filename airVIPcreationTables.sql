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

