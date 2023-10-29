-- creacion de tabla tipo_usuario
create table tipo_usuario(
    id_tipo serial,
    nombre_tipo text NOT NULL CHECK ( nombre_tipo = 'SISTEMA' OR nombre_tipo = 'ADMINISTRACION'),   

    CONSTRAINT pk_tipo_usuario
	PRIMARY KEY (id_tipo)
);

-- creacion de tabla usuario
create table usuario(
    id_usuario  serial,
    nombre text NOT NULL CHECK ( length(nombre) > 3),   
    apellido text NOT NULL CHECK ( length(apellido) > 3),
    alias  text UNIQUE NOT NULL CHECK ( length(alias) > 3),
    contrasenia  text NOT NULL CHECK ( length(contrasenia) > 7),   
    email_principal   text UNIQUE NOT NULL CHECK ( length(email_principal) > 3),   
    email_secundario  text NOT NULL CHECK ( length(email_secundario) > 3),   
    numero_celular   text NOT NULL CHECK (length(numero_celular) > 6), 
    id_tipo_usuario   int NOT NULL,
    fecha_alta timestamp NOT NULL CHECK (fecha_alta > '1900-01-01'),
    fecha_baja timestamp CHECK (fecha_alta < fecha_baja),

    CONSTRAINT pk_usuario
	PRIMARY KEY (id_usuario),
	
    CONSTRAINT fk_id_tipo_usuario
	FOREIGN KEY (id_tipo_usuario) 
	REFERENCES tipo_usuario(id_tipo)
);

