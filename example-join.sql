/** create table **/
create table tbl_siswa(
	id_siswa varchar(255) not null unique,
	nama varchar(255) not null,
	address varchar(255) not null,
	kelas varchar(255) not null,

	constraint pk_tbl_siswa primary key (id_siswa)
);

create table tbl_peminjaman(
	id_peminjaman varchar(255) not null,
	nama varchar(255) not null,
	judul varchar(255) not null,
	tgl_pinjam datetime not null,

	constraint pk_tbl_peminjaman primary key(id_peminjaman)
);

/** query join -> tampilkan detail siswa yang meminjam buku **/
select ts.id_siswa, ts.nama, ts.address, ts.kelas, tp.judul from tbl_siswa ts join tbl_peminjaman tp 
where ts.nama = tp.nama;


/** example insert tbl_peminjaman **/
insert into tbl_peminjaman(id_peminjaman, nama, judul, tgl_pinjam) 
values ('p-001', 'muhammad dicka nirwansyah', 'MySQL For Beginner', now());
insert into tbl_peminjaman(id_peminjaman, nama, judul, tgl_pinjam) 
values ('p-002', 'denada rosa florina', 'Python for datascients', now());
insert into tbl_peminjaman(id_peminjaman, nama, judul, tgl_pinjam) 
values ('p-003', 'alex ferguson', 'Java for beginner', now());
insert into tbl_peminjaman(id_peminjaman, nama, judul, tgl_pinjam) 
values ('p-004', 'ahmad luthfi yahya', 'MySQL For Beginner', now());
insert into tbl_peminjaman(id_peminjaman, nama, judul, tgl_pinjam) 
values ('p-005', 'lucinta luna', 'Scala for datascients', now());

/** example insert tbl siswa **/
insert into tbl_siswa(id_siswa, nama, address, kelas)
values ('s-001', 'muhammad dicka nirwansyah', 'cilandak', '12');
insert into tbl_siswa(id_siswa, nama, address, kelas)
values ('s-002', 'denada rosa florina', 'ciputat', '11');
insert into tbl_siswa(id_siswa, nama, address, kelas)
values ('s-003', 'adelia syiva tiara', 'cipete', '10');
insert into tbl_siswa(id_siswa, nama, address, kelas)
values ('s-004', 'ahmad luthfi yahya', 'lebak bulus', '12');
insert into tbl_siswa(id_siswa, nama, address, kelas)
values ('s-005', 'muhammad dicky adriansyah', 'gandul', '12');
insert into tbl_siswa(id_siswa, nama, address, kelas)
values ('s-006', 'kahfi fathurrahman', 'gandul', '11');
insert into tbl_siswa(id_siswa, nama, address, kelas)
values ('s-007', 'fika mutiathurrahman', 'gandul', '12');
insert into tbl_siswa(id_siswa, nama, address, kelas)
values ('s-008', 'eva luthfia', 'cilandak', '12');
insert into tbl_siswa(id_siswa, nama, address, kelas)
values ('s-009', 'yasir mubarok', 'cilandak', '10');

/** example insert tbl_peminjaman **/