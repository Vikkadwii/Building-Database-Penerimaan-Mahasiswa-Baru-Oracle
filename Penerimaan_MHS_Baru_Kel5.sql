create table laporan_pendaftaran
(
    id_pendaftaran VARCHAR (20) Not Null,
    id_akun        VARCHAR (20) Not Null,
    id_jalur       VARCHAR (20) Not Null,
    id_prodi       VARCHAR (20) Not Null,
    id_fakultas    VARCHAR (20) Not Null,
    tanggal_daftar DATE,
    biaya_daftar   NUMBER,
    status_bayar   VARCHAR (20),
    upload_berkas  VARCHAR (20),
    tanggal_upload_berkas   DATE,
    status_verifikasi_berkas   VARCHAR (20)
);
ALTER TABLE laporan_pendaftaran add constraint laporan_PK primary key (id_pendaftaran);

create table Pendaftar
(
    id_akun         VARCHAR2 (20) NOT NULL,
    email           VARCHAR (30),
    nama_pendaftar  VARCHAR (20),
    no_HP_pendaftar VARCHAR(13),
    tgl_lahir       DATE,
    alamat          VARCHAR(30),
    asal_sekolah    VARCHAR(30),
    nama_orang_tua  VARCHAR(20),
    no_HP_orang_tua VARCHAR(20)
);
ALTER TABLE pendaftar ADD CONSTRAINT pendaftar_PK PRIMARY KEY ( id_akun ) ;

CREATE TABLE JALUR
(
    id_jalur    VARCHAR (20) Not Null,
    id_periode  VARCHAR (20) Not Null,
    nama_jalur  VARCHAR (20),
    persyaratan VARCHAR (50)
);
ALTER TABLE jalur Add constraint jalur_PK PRIMARY KEY (id_jalur);

CREATE TABLE data_periode
(
    id_periode      VARCHAR (20) Not Null,
    nama_periode    VARCHAR (20),
    tanggal_mulai   DATE,
    tanggal_akhir   DATE
);
Alter table data_periode add constraint data_PK primary key (id_periode);

CREATE TABLE adminn
(
    kode_admin      VARCHAR (20) Not Null,
    nama_admin      VARCHAR (20),
    NO_HP_admin     VARCHAR (20)
);
ALTER TABLE adminn add constraint adminn_PK primary key (kode_admin);

create table fakultas
(
    id_fakultas VARCHAR (20) Not Null,
    nama_fakultas   VARCHAR (20),
    akreditas_fakultas   VARCHAR (20) ,
    deskripsi VARCHAR (100)
);
ALTER TABLE fakultas add constraint fakultas_PK primary key (id_fakultas);

create table prodi
(
    id_prodi    VARCHAR (20) Not Null,
    id_fakultas VARCHAR (20) Not Null,
    nama_prodi  VARCHAR (50),
    akreditas_prodi   VARCHAR (20),
    BPP         number 
);
ALTER TABLE prodi ADD CONSTRAINT prodi_PK primary key (id_prodi);

ALTER TABLE laporan_pendaftaran ADD CONSTRAINT laporan_Pendaftar_FK FOREIGN KEY ( id_akun ) REFERENCES Pendaftar ( id_akun ) ;
ALTER TABLE laporan_pendaftaran ADD CONSTRAINT laporan_JALUR_FK FOREIGN KEY ( id_jalur ) REFERENCES JALUR ( id_jalur ) ;
ALTER TABLE laporan_pendaftaran add constraint laporan_prodi_FK foreign key (id_prodi) references prodi (id_prodi);
ALTER TABLE laporan_pendaftaran add constraint laporan_fakultas_FK foreign key (id_fakultas) references fakultas (id_fakultas);
ALTER TABLE jalur add constraint jalur_periode_FK foreign key (id_periode) references data_periode (id_periode);
ALTER TABLE prodi add constraint prodi_fakultas_FK foreign key (id_fakultas) references fakultas (id_fakultas);

insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS01','nana@gmail.com','nana','089923456787','07-dec-2001','jl.mangga 2 jakarta', 'SMAN1 JAKARTA','budi','089900778877');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS02','adina@gmai.com','adina','089534768899','01-jan-2002','jl.cempaka 18 medan','SMAN5 MEDAN','siti','081377890012');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS03','citra@gmail.com','citra','081334567123','02-jan-2003','jl.soekarni 21 semarang','SMAN2 SEMARANG','kinan','081389890088');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS04','daiva@gmail.com','daiva','081376567099','13-feb-2004','jl. mawar 72 padang','SMAN59 PADANG','nina','089567878089');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS05','eri@gmail.com','eri','089577801382','18-jun-2001','jl. melati 123 jakarta','SMA CENDAKA','anto','081345657789');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS06','lola@gmail.com','lola','089572336766','19-aug-2002','jl.bangka 12 medan','SMA St.Thomas MEDAN','tedi','081346789907');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS07','nara@gmail.com','nara','089571236678','27-oct-2003','jl. jati 18 bandung','SMAN1 BANDUNG','rahel','089567768909');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS08','olive@gmail.com','olive','081367873465','13-aug-2002','jl. setia budi 72 medan','SMAN1 MEDAN','fadlan','089567890875');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS09','qilla@gmail.com','qilla','081365723088','14-jul-2003','jl. karya 34 jakarta','SMAN34 JAKARTA','naila','081356782201');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS10','afia@gmail.com','afia','089512558090','30-nov-2004','jl. mekar 72 bandung','SMAN1 BANDUNG','nasywa','081345672344');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS11','kia@gmail.com','kia','081367890098','24-sep-2003','jl. raya 2 medan','SMA SUTOMO','reza','089567789009');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS12','alin@gmail.com','alin','081378984546','25-may-2003','jl. kemang 30 jakarta','SMA CAHAYA','abim','081344467899');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS13','ben@gmail.com','ben','089571456780','10-oct-2003','jl. cendana 21 surabaya','SMA HARAPAN','adit','089567789945');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS14','akiv@gmail.com','akiv','089570038909','11-mar-2004','jl. jelita 34 surabaya','SMA HARAPAN','fahriza','081334789061');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS15','alan@gmail.com','alan','081367879812','16-feb-2004','jl. juanda 65 medan','SMAN1 MEDAN','albet','089577890090');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS16','nino@gmail.com','nino','081346750890','28-may-2004','jl. harapan 29 jakarta','SMAN34 JAKARTA','fitra','081344328187');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS17','dani@gmail.com','dani','081345666788','23-sep-2003','jl. garuda 2 bandung','SMAN1 BANDUNG','erik','089566789099');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS18','fino@gmail.com','fino','089500097899','06-mar-2004','jl. mawar 34 padang','SMAN2 PADANG','indri','081378980012');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS19','ian@gmail.com','ian','081377899090','19-apr-2003','jl. sm raja 140 medan','SMAN1 MEDAN','adina','089523234567');
insert into pendaftar (id_akun, email, nama_pendaftar, no_HP_pendaftar, tgl_lahir, alamat, asal_sekolah, nama_orang_tua, no_HP_orang_tua) values ('MHS20','miko@gmail.com','miko','081344889094','29-oct-2003','jl. merdeka 30 bandung','SMA GARUDA','brigita','081345679898');


insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID1','periode1','06-oct-2020','03-dec-2020');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID2','periode2','06-oct-2020','03-dec-2020');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID3','periode3','06-oct-2020','03-dec-2020');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID4','periode4','06-oct-2020','03-dec-2020');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID5','periode5','06-oct-2020','03-dec-2020');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID6','periode6','08-jan-2021','04-mar-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID7','periode7','08-jan-2021','04-mar-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID8','periode8','08-jan-2021','04-mar-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID9','periode9','08-jan-2021','04-mar-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID10','periode10','08-jan-2021','04-mar-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID11','periode11','27-mar-2021','14-may-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID12','periode12','27-mar-2021','14-may-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID13','periode13','27-mar-2021','14-may-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID14','periode14','27-mar-2021','14-may-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID15','periode15','27-mar-2021','14-may-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID16','periode16','05-jun-2021','27-jul-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID17','periode17','05-jun-2021','27-jul-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID18','periode18','05-jun-2021','27-jul-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID19','periode19','05-jun-2021','27-jul-2021');
insert into data_periode (id_periode, nama_periode, tanggal_mulai, tanggal_akhir) values ('PID20','periode20','05-jun-2021','27-jul-2021');


insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('KRS','krisna','081373416776');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('RSA','riska','081345556770');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('YVI','yovi','081333339099');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('NDA','nanda','089598957679');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('DAE','dave','089589897777');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('GRC','grace','081331313166');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('KNK','kenrik','081344545544');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('JNI','jeni','089511000099');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('JKO','joko','089523456709');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('DBA','debora','089500009890');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('LDA','lidia','089566666777');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('TII','tini','081322400456');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('NYA','neyka','081365778800');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('ARS','aris','081308919081');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('LNY','liny','089575859525');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('ASF','asraf','081340048008');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('BOI','bobi','089567887655');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('ALX','alex','089512345670');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('ALF','alif','081309877865');
insert into adminn (kode_admin, nama_admin, no_HP_admin) values ('ANW','anwar','081378980003');


insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('UTG1','PID1','ujian tulis','nilai ujian diatas 70');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('USM1','PID1','undangan seleksi','nilai rapor diatas 80');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('KIP1','PID2','beasiswa','memiliki prestasi');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('INT1','PID3','kelas internasional','toefl diatas diatas 600');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('PJJ1','PID3','online learning','memiliki alasan konkrit memilih online learning');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('UTG2','PID4','ujian tulis','nilai ujian diatas 70');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('USM2','PID5','undangan seleksi','nilai rapor diatas 80');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('KIP2','PID6','beasiswa','memiliki prestasi');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('INT2','PID6','kelas internasional','toefl diatas diatas 600');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('PJJ2','PID7','online learning','memiliki alasan konkrit memilih online learning');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('UTG3','PID7','ujian tulis','nilai ujian diatas 70');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('USM3','PID7','undangan seleksi','nilai rapor diatas 80');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('KIP3','PID8','beasiswa','memiliki prestasi');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('INT3','PID9','kelas internasional','toefl diatas diatas 600');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('PJJ3','PID10','online learning','memiliki alasan konkrit memilih online learning');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('UTG4','PID10','ujian tulis','nilai ujian diatas 70');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('USM4','PID11','undangan seleksi','nilai rapor diatas 80');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('KIP4','PID12','beasiswa','memiliki prestasi');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('INT4','PID13','kelas internasional','toefl diatas diatas 600');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('PJJ4','PID13','online learning','memiliki alasan konkrit memilih online learning');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('UTG5','PID14','ujian tulis','nilai ujian diatas 70');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('USM5','PID14','undangan seleksi','nilai rapor diatas 80');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('KIP5','PID14','beasiswa','memiliki prestasi');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('INT5','PID14','kelas internasional','toefl diatas diatas 600');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('PJJ5','PID15','online learning','memiliki alasan konkrit memilih online learning');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('UTG6','PID15','ujian tulis','nilai ujian diatas 70');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('USM6','PID15','undangan seleksi','nilai rapor diatas 80');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('KIP6','PID15','beasiswa','memiliki prestasi');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('INT6','PID15','kelas internasional','toefl diatas diatas 600');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('PJJ6','PID16','online learning','memiliki alasan konkrit memilih online learning');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('UTG7','PID16','ujian tulis','nilai ujian diatas 70');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('USM7','PID17','undangan seleksi','nilai rapor diatas 80');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('KIP7','PID17','beasiswa','memiliki prestasi');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('INT7','PID17','kelas internasional','toefl diatas diatas 600');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('PJJ7','PID18','online learning','memiliki alasan konkrit memilih online learning');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('UTG8','PID18','ujian tulis','nilai ujian diatas 70');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('USM8','PID19','undangan seleksi','nilai rapor diatas 80');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('KIP8','PID20','beasiswa','memiliki prestasi');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('INT8','PID20','kelas internasional','toefl diatas diatas 600');
insert into JALUR (id_jalur, id_periode, nama_jalur, persyaratan) values ('PJJ8','PID20','online learning','memiliki alasan konkrit memilih online learning');


insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FKS','kesehatan','A','Fakultas yang mempunyai beberapa prodi seperti dokter hewan,dokter gigi,dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FMIPA','matematika','B','Fakultas yang mempunyai beberapa prodi seperti biokimia,geografi,dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FSH','sosial','A','Fakultas yang mempunyai beberapa prodi seperti ilmu politik,penyiaran,dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FEB', 'ekonomi','A','Fakultas yang mempunyai beberapa prodi seperti manajemen keuangan,manajemen pasaran,dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FSB', 'sastra','A','Fakultas yang mempunyai beberapa prodi seperti manajemen sastra rusia,sastra jawa,dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FKT', 'komputer','A','Fakultas yang mempunyai beberapa prodi seperti teknologi game,ilmu komputasi,dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FPD', 'pendidikan','A','Fakultas yang mempunyai beberapa prodi seperti pendidikan geografis,ilmu perpustakaan,dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FPT', 'pertanian','A','Fakultas yang mempunyai beberapa prodi seperti produksi ternak, kehutanan,dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FIT', 'terapan','A','Fakultas yang mempunyai beberapa prodi seperti pariwisata,pendidikan militer,dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FS', 'seni','A','Fakultas yang mempunyai beberapa prodi seperti animasi,tata boga, dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FT', 'teknik','A','Fakultas yang mempunyai beberapa prodi seperti teknik grafika,teknik material,dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FIO', 'olahraga','A','Fakultas yang mempunyai beberapa prodi seperti olahraga rekreasi, ilmu keolahragaan,dll');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FF', 'farmasi','A','Fakultas yang mempunyai beberapa prodi seperti farmasi');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FP', 'psikologi','A','Fakultas yang mempunyai beberapa prodi seperti psikologi');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FIA', 'komunikasi','A','Fakultas yang mempunyai beberapa prodi seperti jurnalistik dan televisi');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FPK', 'perikanan','A','Fakultas yang mempunyai beberapa prodi seperti perikanan dan ilmu kelautan');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FG', 'geologi','A','Fakultas yang mempunyai beberapa prodi seperti teknik geologi');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FH', 'hukum','A','Fakultas yang mempunyai beberapa prodi seperti ilmu hukum');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FIB', 'budaya','A','Fakultas yang mempunyai beberapa prodi seperti sastra jepang, sastra rusia');
insert into fakultas (id_fakultas, nama_fakultas, akreditas_fakultas, deskripsi) values ('FIP', 'peternakan','A','Fakultas yang mempunyai beberapa prodi seperti ilmu peternakan');


insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('kdk','FKS','kedokteran','B','8000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('kdg','FKS','kedokteran gigi','A','6000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('kdh','FKS','kedokteran hewan','B','8000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('kdm','FKS','kesehatan masyarakat','B','8000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('mtk','FMIPA','matematika','B','7500000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('kim','FMIPA','kimia','A','8300000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('fis','FMIPA','fisika','A','4000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('bio','FMIPA','biologi','A','5000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('ein','FEB','ekonomi internasional','A','10000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('ep','FEB','ekonomi publik','A','15000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('er','FEB','ekonomi regional','A','1000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('mp','FEB','manajemen pemasaran','B','2500000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('is','FSB','ilmu sejarah','B','53000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('si','FSB','sastra inggris','B','9400000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('ark','FSB','arkeologi','B','4300000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('sp','FSB','sastra prancis','A','9400000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('sk','FSB','sastra korea','B','5800000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('ti','FKT','teknik informatika','A','1900000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('mat','FKT','mobile application technologi','A','5300000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('aci','FKT','accounting information','A','3900000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('ik','FKT','ilmu komputer','A','9800000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('sib','FKT','sistem informasi bisnis','A','2500000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('mpd','FP','manajemen pendidikan','B','1000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('pba','FP','pendidikan bahasa arab','B','7300000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('pbi','FP','pendidikan bahasa inggris','A','3300000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('pipa','FP','pendidikan ilmu pengetahuan alam','B','9100000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('ah','FPT','agronomi dan hortikultikultura','B','1600000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('mpn','FPT','mikrobiologi pertanian','A','5400000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('ikl','FPT','ilmu kelautan','A','7700000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('par','FPT','pariwisata','A','5300000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('pen','FIT','penerbangan','A','2100000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('llu','FIT','lalu lintas udara','A','8000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('ml','FIT','manajemen logistik','A','2900000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('pol','FIT','pendidikan kepolisian','B','10000000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('ani','FS','animasi','B','3800000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('dkv','FS','dkv new media','A','1100000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('tabo','FS','tata boga','A','9300000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('ts','FT','teknik sipil','B','4700000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('tm','FT','teknik mesin','B','1500000');
insert into prodi (id_prodi, id_fakultas, nama_prodi, akreditas_prodi, BPP) values ('te','FT','teknik elektro','A','3000000');


insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT1','MHS01','UTG1','kdk','FKS','09-oct-2020',200000,'sudah bayar','sudah upload','10-dec-2020','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT2','MHS02','UTG2','kdg','FKS','13-oct-2020',250000,'belum bayar','belum upload','3-jan-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT3','MHS03','USM3','kdh','FKS','27-jan-2021',300000,'belum bayar','belum upload','21-mar-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT4','MHS04','USM4','kdm','FKS','06-feb-2021',350000,'sudah bayar','sudah upload','16-mar-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT5','MHS05','KIP1','mtk','FMIPA','02-nov-2020',200000,'sudah bayar','sudah upload','02-jan-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT6','MHS06','INT2','kim','FMIPA','02-nov-2020',250000,'belum bayar','belum upload','13-dec-2020','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT7','MHS07','PJJ3','fis','FMIPA','14-feb-2021',300000,'sudah bayar','sudah upload','14-mar-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT8','MHS08','INT2','bio','FMIPA','16-nov-2020',350000,'belum bayar','belum upload','25-dec-2020','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT9','MHS09','UTG2','ein','FEB','04-nov-2020',300000,'sudah bayar','sudah upload','25-dec-2020','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT10','MHS10','UTG4','ep','FEB','17-jan-2021',350000,'belum bayar','belum upload','14-mar-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT11','MHS11','USM1','er','FEB','27-oct-2020',200000,'sudah bayar','sudah upload','30-dec-2020','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT12','MHS12','USM3','mp','FEB','27-feb-2021',250000,'sudah bayar','sudah upload','12-mar-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT13','MHS13','KIP2','is','FSB','21-oct-2020',250000,'sudah bayar','sudah upload','25-dec-2020','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT14','MHS14','INT4','si','FSB','13-feb-2021',200000,'belum bayar','belum upload','25-mar-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT15','MHS15','PJJ1','ark','FSB','02-dec-2020',200000,'belum bayar','belum upload','12-dec-2020','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT16','MHS16','INT7','sp','FSB','13-jun-2021',200000,'sudah bayar','sudah upload','10-aug-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT17','MHS17','INT2','sk','FSB','10-nov-2020',250000,'belum bayar','belum upload','25-dec-2020','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT18','MHS18','INT5','ti','FKT','17-jan-2021',300000,'sudah bayar','sudah upload','02-jun-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT19','MHS19','PJJ4','mat','FKT','27-oct-2020',250000,'sudah bayar','sudah upload','17-mar-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT20','MHS20','PJJ4','aci','FKT','27-feb-2021',350000,'belum bayar','belum upload','13-mar-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT21','MHS01','INT7','ik','FKT','21-oct-2020',300000,'belum bayar','belum upload','25-aug-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT22','MHS02','INT4','sib','FKT','13-feb-2021',350000,'belum bayar','belum upload','24-mar-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT23','MHS03','KIP6','mpd','FP','02-dec-2020',300000,'belum bayar','belum upload','04-jun-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT24','MHS04','INT7','pba','FP','13-jun-2021',300000,'belum bayar','belum upload','22-aug-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT25','MHS08','USM5','pbi','FP','20-apr-2021',350000,'sudah bayar','sudah upload','25-may-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT26','MHS09','UTG7','pipa','FP','11-jun-2021',250000,'belum bayar','sudah upload','20-aug-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT27','MHS11','INT5','ah','FPT','02-apr-2021',200000,'belum bayar','belum upload','02-jun-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT28','MHS14','KIP6','mpn','FPT','11-apr-2021',350000,'belum bayar','belum upload','21-may-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT29','MHS12','PJJ5','ikl','FPT','12-may-2021',300000,'sudah bayar','sudah upload','21-may-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT30','MHS20','USM6','par','FPT','22-apr-2021',250000,'belum bayar','belum upload','01-jun-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT31','MHS13','USM7','pen','FIT','17-jul-2021',250000,'sudah bayar','sudah upload','21-aug-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT32','MHS17','UTG5','llu','FIT','04-apr-2021',200000,'belum bayar','belum upload','03-jun-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT33','MHS12','INT6','ml','FIT','10-apr-2021',200000,'sudah bayar','sudah upload','01-jun-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT34','MHS19','USM6','pol','FIT','20-apr-2021',350000,'sudah bayar','sudah upload','22-may-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT35','MHS11','UTG6','ani','FS','09-may-2021',250000,'sudah bayar','sudah upload','22-may-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT36','MHS14','UTG8','dkv','FS','15-jun-2021',250000,'sudah bayar','sudah upload','22-aug-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT37','MHS07','USM6','tabo','FS','30-mar-2021',300000,'sudah bayar','sudah upload','01-jun-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT38','MHS17','INT7','ts','FT','20-jun-2021',200000,'belum bayar','belum upload','13-aug-2021','gagal');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT39','MHS11','KIP8','tm','FT','19-jun-2021',200000,'sudah bayar','sudah upload','13-aug-2021','berhasil');
insert into laporan_pendaftaran (id_pendaftaran, id_akun, id_jalur, id_prodi, id_fakultas, tanggal_daftar, biaya_daftar, status_bayar, upload_berkas, tanggal_upload_berkas, status_verifikasi_berkas) values ('PDFT40','MHS12','PJJ8','te','FT','01-jul-2021',300000,'belum bayar','belum upload','21-aug-2021','gagal');
