CREATE DATABASE logical_test;
create table tb_mahasiswa (
    mhs_id int(5) not null,
     mhs_nim int(20),
     mhs_nama varchar(50),
     mhs_angkatan int(6),
    PRIMARY KEY(mhs_id )
);
create table tb_matakuliah(
    mk_id int(5) not null,
    mk_kode varchar(10),
    mk_sks int(5),
    mk_nama	 varchar(50),
    PRIMARY KEY(mk_id )
);
create table tb_mahasiswa_nilai (
    mhs_nilai_id int(5) not null,
    mhs_id int(5),
    mk_id int(5),
    nilai varchar(10),
    PRIMARY KEY (mhs_nilai_id),
    FOREIGN KEY (mhs_id) REFERENCES tb_mahasiswa(mhs_id),
    FOREIGN KEY (mk_id) REFERENCES tb_matakuliah(mk_id)
);
INSERT INTO tb_mahasiswa VALUES (1,2018001, "Jono", 2018 );
INSERT INTO tb_mahasiswa VALUES (2,2018002, "Taufik", 2018 );
INSERT INTO tb_mahasiswa VALUES (3,2018003, "Maria", 2018 );
INSERT INTO tb_mahasiswa VALUES (4,2019001, "Sari", 2019 );
INSERT INTO tb_mahasiswa VALUES (5,2019002, "Bambang", 2019 );

INSERT INTO tb_matakuliah VALUES (1,"MK202",3,"OOP");
INSERT INTO tb_matakuliah VALUES (2,"MK303",2,"Basis Data");

INSERT INTO tb_mahasiswa_nilai VALUES (1,1,1,"70.00");
INSERT INTO tb_mahasiswa_nilai VALUES (2,1,1,"80.00");
INSERT INTO tb_mahasiswa_nilai VALUES (3,2,1,"82.00");
INSERT INTO tb_mahasiswa_nilai VALUES (4,2,2,"74.00");
INSERT INTO tb_mahasiswa_nilai VALUES (5,4,1,"76.00");
INSERT INTO tb_mahasiswa_nilai VALUES (6,4,2,"80.00");
INSERT INTO tb_mahasiswa_nilai VALUES (7,5,1,"60.00");

select mhs_nama from tb_mahasiswa join tb_mahasiswa_nilai, tb_matakuliah where tb_matakuliah.mk_kode="MK303" and max(tb_mahasiswa_nilai.nilai);