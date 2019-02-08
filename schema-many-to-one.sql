create table tbl_mahasiswa(
	id_mahasiswa varchar(255) not null,
	nama varchar(255) not null,
	email varchar(255) not null,
	status boolean,
	jurusan_id varchar(255) not null,

	constraint pk_tbl_mahasiswa_id_mahasiswa primary key (id_mahasiswa),
	constraint fk_tbl_mahasiswa_jurusan_id foreign key (jurusan_id) references tbl_jurusan (id_jurusan)
);

create table tbl_jurusan(
	id_jurusan varchar(255) not null,
	nama varchar(255) not null,

	constraint pk_tbl_jurusan_id_jurusan (id_jurusan) primary key (id_jurusan)
);