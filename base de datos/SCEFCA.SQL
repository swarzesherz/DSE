/*CREATE DATABASE scefca TEMPLATE template0 ENCODING 'UTF8';*/
CREATE TABLE alumno (
	id_alumno				SERIAL		NOT NULL,
	nombre_alumno			varchar(40)	NOT NULL,
	ap_paterno_alumno		varchar(40)	NOT NULL,
	ap_materno_alumno		varchar(40)	NOT NULL,
	cuenta_alumno			varchar(10),
	mail_alumno				varchar(40)	NOT NULL,
	celular_alumno			varchar(12)	NOT NULL,
	telefono_alumno			varchar(12),
	fecha_registro_alumno	DATE		NOT NULL,
	CONSTRAINT PK_ALUMNO	PRIMARY KEY (id_alumno)
);
CREATE TABLE profesor (
	id_profesor					SERIAL,
	nombre_profesor				varchar(40)	NOT NULL,
	ap_paterno_profesor			varchar(40)	NOT NULL,
	ap_materno_profesor			varchar(40)	NOT NULL,
	mail_profesor				varchar(40)	NOT NULL,
	celular_profesor			varchar(12)	NOT NULL,
	telefono_profesor			varchar(12)	NOT NULL,
	numero_trabajador_profesor	varchar(20),
	ruta_curriculum_profesor	varchar(200) NOT NULL,
	fecha_registro_profesor		DATE 		NOT NULL,
	estado_profesor				CHAR(1)		NOT NULL,
	CONSTRAINT PK_PROFESOR	PRIMARY KEY (id_profesor)
);
CREATE TABLE LABORATORIO (
	id_laboratorio		SERIAL		NOT NULL,
	nombre_laboratorio	VARCHAR 	NOT NULL,
	CONSTRAINT PK_LABORATORIO	PRIMARY KEY (id_laboratorio)
);
CREATE TABLE curso (
	id_curso		SERIAL			NOT NULL,
	nombre_curso 	VARCHAR(100)	NOT NULL,
	CONSTRAINT	PK_CURSO PRIMARY KEY (id_curso)
);
CREATE TABLE COORDINADOR (
	id_coordinador					SERIAL	NOT NULL,
	nombre_coordinador				varchar(40)	NOT NULL,
	ap_paterno_coordinador			varchar(40)	NOT NULL,
	ap_materno_coordinador			varchar(40)	NOT NULL,
	mail_coordinador				varchar(40)	NOT NULL,
	estado_coordinador				CHAR(1)		NOT NULL,
	celular_coordinador				varchar(12)	NOT NULL,
	num_oficina_coordinador			varchar(15)	NOT NULL,
	CONSTRAINT PK_COORDINADOR PRIMARY KEY (id_coordinador)
);
CREATE TABLE curso_nivel (
	id_curso_nivel				SERIAL 		NOT NULL,
	id_curso					INTEGER 	NOT NULL,
	nivel_curso					VARCHAR(15)	NOT NULL,
	fecha_registro_curso_nivel	DATE		NOT NULL,
	costo_curso_nivel			NUMERIC(10,2) NOT NULL,
	CONSTRAINT PK_CURSO_NIVEL PRIMARY KEY (id_curso_nivel),
	CONSTRAINT FK_CURSO_NIVEL_CURSO FOREIGN KEY (id_curso) REFERENCES curso (id_curso)
);
CREATE TABLE historial_costo (
	id_historial				SERIAL			NOT NULL,
	id_curso_nivel				INTEGER			NOT NULL,
	costo_curso_nivel			NUMERIC(10,2)	NOT NULL,
	fecha_registro_historial	DATE			NOT NULL,
	CONSTRAINT PK_HISTORIAL PRIMARY KEY (id_historial),
	CONSTRAINT FK_HISTORIAL_CURSO FOREIGN KEY (id_curso_nivel) REFERENCES curso_nivel (id_curso_nivel)	
);
CREATE TABLE horario (
	id_horario		SERIAL	NOT NULL,
	id_curso_nivel	INTEGER	NOT NULL,
	CONSTRAINT PK_HORARIO PRIMARY KEY (id_horario),
	CONSTRAINT FK_HORARIO_CURSO FOREIGN KEY (id_curso_nivel) REFERENCES curso_nivel (id_curso_nivel)
);
CREATE TABLE hora (
	id_hora		SERIAL		NOT NULL,
	id_horario	INTEGER		NOT NULL,
	dia			VARCHAR(15) NOT NULL,
	hora		VARCHAR(15)	NOT NULL,
	CONSTRAINT PK_HORA PRIMARY KEY (id_horario),
	CONSTRAINT FK_HORA_HORARIO FOREIGN KEY (id_horario) REFERENCES horario(id_horario)
);
CREATE TABLE grupo (
	id_grupo				SERIAL		NOT NULL,
	id_profesor				INTEGER,
	id_laboratorio			INTEGER		NOT NULL,
	id_horario				INTEGER		NOT NULL,
	fecha_registro_grupo	DATE		NOT NULL,
	inicio_periodo_grupo	DATE		NOT NULL,
	CONSTRAINT PK_GRUPO PRIMARY KEY (id_grupo),
	CONSTRAINT FK_GRUPO_PROFESOR FOREIGN KEY (id_profesor) REFERENCES profesor (id_profesor),
	CONSTRAINT FK_GRUPO_LABORATORIO FOREIGN KEY (id_laboratorio) REFERENCES laboratorio (id_laboratorio),
	CONSTRAINT FK_GRUPO_HORARIO FOREIGN KEY (id_horario) REFERENCES horario (id_horario)
);
CREATE TABLE servidor_social (
	id_ss				SERIAL		NOT NULL,
	id_coordinador		INTEGER		NOT NULL,
	nombre_ss			VARCHAR(40)	NOT NULL,
	ap_paterno_ss		VARCHAR(40)	NOT NULL,
	ap_materno_ss		VARCHAR(40)	NOT NULL,
	mail_ss				VARCHAR(40)	NOT NULL,
	cuenta_ss			VARCHAR(10)	NOT NULL,
	celular_ss			VARCHAR(12)	NOT NULL,
	telefono_casa_ss	VARCHAR(12),
	fecha_registro_ss	DATE		NOT NULL,
	fecha_baja_ss		DATE,
	CONSTRAINT PK_SERVIDOR_SOCIAL PRIMARY KEY (id_ss),
	CONSTRAINT FK_SERVIDOR_SS_COORDINADOR	FOREIGN KEY (id_coordinador) REFERENCES coordinador (id_coordinador)
	);
CREATE TABLE inscripcion (
	id_inscripcion			SERIAL		NOT NULL,
	id_ss					INTEGER		NOT NULL,
	id_alumno				INTEGER		NOT NULL,
	id_grupo				INTEGER,
	calificacion_alumno		NUMERIC(10,2),
	calificacion_profesor	NUMERIC(10,2),
	CONSTRAINT PK_INSCRIPCION PRIMARY KEY (id_inscripcion),
	CONSTRAINT FK_INSCRIPCION_SS FOREIGN KEY (id_ss) REFERENCES servidor_social(id_ss),
	CONSTRAINT FK_INSCRIPCION_ALUMNO FOREIGN KEY (id_alumno) REFERENCES alumno(id_alumno),
	CONSTRAINT FK_INSCRIPCION_GRUPO FOREIGN KEY (id_grupo) REFERENCES grupo(id_grupo)
);