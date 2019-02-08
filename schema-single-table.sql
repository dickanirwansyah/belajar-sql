/** create table produk **/
create table produk(
id_produk int auto_increment,
nama varchar(255) not null,
kategori varchar(255) not null,
harga int not null,
stock int,
tanggal_buat datetime not null,
tanggal_update datetime not null,

constraint pk_produk_id primary key(id_produk)
);

/** insert data produk **/
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('sabun giv', 'sabun', 2000, 100, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('sampo clear', 'shampo', 1500, 90, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('indomie goreng', 'mie', 1300, 1000, now(), now());

insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('indomie soto', 'mie', 1300, 1000, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('indomie rendang', 'mie', 1500, 900, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('sampo kids', 'shampo', 2300, 100, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('sampo lifebuoy', 'sampo', 9000, 300, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('pocarisweet', 'minuman', 3000, 900, now(), now());

insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('susu ultra', 'susu', 2500, 900, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('susu kental manis', 'susu', 4500, 1000, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('fanta', 'minuman', 3000, 900, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('sprite', 'minuman', 3000, 900, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('cocacola', 'minuman', 3000, 900, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('sabun lux', 'sabun', 3100, 900, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('popmie indomie', 'mie', 2000, 800, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('mie sedap', 'mie', 3000, 900, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('mie sarimi', 'mie', 3000, 900, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('mizone', 'minuman', 3500, 600, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('calpico', 'minuman', 700, 900, now(), now());
insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('sampo zinc', 'shampo', 3000, 900, now(), now());

insert into produk(nama, kategori, harga, stock, tanggal_buat, tanggal_update)
values('mie sakura', 'mie', 3000, 900, now(), now());

/** select data **/
select * from produk;
select nama, kategori, harga, stock from produk;

/** select max min data berdasarkan column **/
select max(harga) as harga_teringgi from produk;
select min(harga) as harga_terendah from produk;


/** select max berdasarkan tanggal **/
select max(harga) as harga_tertinggi from produk where year(tanggal_buat) = 2019;
select min(harga) as harga_terendah from produk where year(tanggal_buat) = 2019;

/** sum harga produk **/
select sum(harga) as sum_total_harga from produk;

/** sum jumlah stock produk **/
select sum(stock) as sum_total_stock from produk;

/** sum stock produk berdasarkan kategori**/
select sum(stock) as sum_total_stock from produk where kategori='mie';
select sum(stock) as sum_total_stock from produk where kategori='shampo';

/** case when **/
select id_produk, nama, 
case when(kategori) = 'mie' then 'MAKANAN' when(kategori) = 'minuman' then 'MINUMAN' else 'TIDAK TERDETEKSI' end as kondisi
from produk;

select id_produk as KODE_PRODUK, nama as NAMA_PRODUK,
case 
when(kategori) = 'mie' then 'MAKANAN' 
when(kategori) = 'shampo' then 'BUKAN MAKANAN DAN MINUMAN'
when(kategori) = 'sabun' then 'BUKAN SAMPO DAN MAKANAN DAN MINUMAN'
when(kategori) = 'minuman' then 'MINUMAN'
else 'TIDAK DIKETAHUI' end as KONDISI
from produk WHERE stock > 900;



