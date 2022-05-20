
ALTER TABLE Cursos 
add column Nivel ENUM ('Iniciacao','Intermedio', 'Avancado');

ALTER TABLE Cursos 
add column Descricao text;

ALTER TABLE Cursos 
add column Avaliacoes ENUM ('nome','tipo', 'ordem');
 
 
 ALTER TABLE Cursos
 add constraint Avaliacoes_fk
 foreign key (Sigla)
 on delete cascade
 on update cascade;
 
