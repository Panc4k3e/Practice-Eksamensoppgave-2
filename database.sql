CREATE TABLE Innbyggere (
    id INTEGER PRIMARY KEY,
    Navn VARCHAR not NULL,
    Adresse VARCHAR not NULL,
    Telefonnummer INTEGER not NULL,
    Epost VARCHAR(80) not NULL
)

CREATE TABLE Resirkulering (
    id interger PRIMARY KEY,
    Innbyggere_id INTEGER not NULL,
    FOREIGN KEY (Innbyggere_id) REFERENCES Innbyggere(id),
    Dato DATE not NULL,
    GlassEnheter INTEGER not NULL,
    MetalEnheter INTEGER not NULL,
    TotalEnheter INTEGER not NULL
)

CREATE TABLE Pantelotteri (
    id INTEGER PRIMARY KEY,
    Innbyggere_id INTEGER not NULL,
    FOREIGN KEY (Innbyggere_id) REFERENCES Innbyggere(id),
    TrekkDato DATE not NULL,
    Vinnere VARCHAR not NULL,
    Premiebelop INTEGER not NULL
)