# descripcion del proyecto


# lista de tablas  de la base de datos:

# Crear las tablas base sin claves foráneas:
```template

CEBE

Pais

DivisionGeografica (sin FK)

Ciudades (sin FK)

Idiomas

Cargos

Niveles

Aplicativos

Area

CentroCostos

Sites

PerfilEquipo

CompetenciasSer

NivelAcademicoProfesional

NivelesAcademicos

NivelesIdioma

PerfilCargo

PerfilCampaña

Requisiciones

InformacionEmpleados

CambioBaseEmpleados

PendientesContratar

MovimientoPersonas


```


## Agregar las claves foráneas:


```sql
ALTER TABLE DivisionGeografica ADD CONSTRAINT FK_DivisionGeografica_Pais FOREIGN KEY (PaisID) REFERENCES Pais (PaisID);

ALTER TABLE Ciudades ADD CONSTRAINT FK_Ciudades_DivisionGeografica FOREIGN KEY (DivisionID) REFERENCES DivisionGeografica (DivisionID);

ALTER TABLE Area ADD CONSTRAINT FK_Area_CEBE FOREIGN KEY (IdCEBE) REFERENCES CEBE (Id);

ALTER TABLE CentroCostos ADD CONSTRAINT FK_CentroCostos_Area FOREIGN KEY (IdArea) REFERENCES Area (Id);

ALTER TABLE PerfilCargo ADD CONSTRAINT FK_PerfilCargo_Cargos FOREIGN KEY (IdCargo) REFERENCES Cargos (Id);

ALTER TABLE PerfilCargo ADD CONSTRAINT FK_PerfilCargo_Cargos1 FOREIGN KEY (IdCargo_Reporta) REFERENCES Cargos (Id);

ALTER TABLE PerfilCargo ADD CONSTRAINT FK_PerfilCargo_Niveles FOREIGN KEY (IdNivel) REFERENCES Niveles (Id);

ALTER TABLE PerfilCampaña ADD CONSTRAINT FK_PerfilCampaña_CentroCostos FOREIGN KEY (IDCentroCosto) REFERENCES CentroCostos (Id);

ALTER TABLE PerfilCampaña ADD CONSTRAINT FK_PerfilCampaña_PerfilCargo FOREIGN KEY (IDPerfilCargo) REFERENCES PerfilCargo (ID);

ALTER TABLE PerfilCampaña ADD CONSTRAINT FK_PerfilCampaña_PerfilEquipo FOREIGN KEY (IDPerfilEquipo) REFERENCES PerfilEquipo (Id);

ALTER TABLE Requisiciones ADD CONSTRAINT FK_Requisiciones_Ciudades FOREIGN KEY (CiudadID) REFERENCES Ciudades (CiudadID);

ALTER TABLE Requisiciones ADD CONSTRAINT FK_Requisiciones_PerfilCampaña FOREIGN KEY (IDCampaña) REFERENCES PerfilCampaña (ID);

ALTER TABLE Requisiciones ADD CONSTRAINT FK_Requisiciones_Sites FOREIGN KEY (IdSites) REFERENCES Sites (Id);

ALTER TABLE DetalleAPlicativosPerilCampaña ADD CONSTRAINT FK_DetalleAPlicativosPerilCampaña_Aplicativos FOREIGN KEY (IDAplicativo) REFERENCES Aplicativos (Id);

ALTER TABLE DetalleAPlicativosPerilCampaña ADD CONSTRAINT FK_DetalleAPlicativosPerilCampaña_PerfilCampaña FOREIGN KEY (IDPerfilCampaña) REFERENCES PerfilCampaña (ID);

ALTER TABLE DetalleCompetenciaSer ADD CONSTRAINT FK_DetalleCompetenciaSer_CompetenciasSer FOREIGN KEY (IDCompetenciaSer) REFERENCES CompetenciasSer (ID);

ALTER TABLE DetalleCompetenciaSer ADD CONSTRAINT FK_DetalleCompetenciaSer_PerfilCargo FOREIGN KEY (IDPerfilCargo) REFERENCES PerfilCargo (ID);

ALTER TABLE DetalleNivelIdiomaPerilCampaña ADD CONSTRAINT FK_DetalleNivelIdiomaPerilCampaña_NivelesIdioma FOREIGN KEY (IDNivelIdioma) REFERENCES NivelesIdioma (Id);

ALTER TABLE DetalleNivelIdiomaPerilCampaña ADD CONSTRAINT FK_DetalleNivelIdiomaPerilCampaña_PerfilCampaña FOREIGN KEY (IDPerfilCampaña) REFERENCES PerfilCampaña (ID);

ALTER TABLE NivelAcademicoProfesional ADD CONSTRAINT FK_NivelAcademicoProfesional_NivelesAcademicos FOREIGN KEY (IdNivelAcademico) REFERENCES NivelesAcademicos (Id);

```

## Crear las vistas:


```
vw_Seleccionados

vw_Requisiciones

vw_PerfilCampañas

vw_UbicacionGeografica

vw_CentroCostos

vw_PerfilCargos


```
