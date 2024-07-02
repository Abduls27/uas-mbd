
-- mencari nama user dan tryout yang memiliki nilai kurang dari 80 pada tabel hasiltryouts
SELECT tryouts.nama, users.name, hasiltryouts.nilai FROM hasiltryouts
INNER JOIN tryouts ON hasiltryouts.id_tryout = tryouts.id
INNER JOIN users ON hasiltryouts.id_user = users.id
WHERE nilai < 80;

-- mencari judul material dan submodules yang memiliki id_submodules 4 pada tabel materials
SELECT materials.title, submodules.title FROM materials
INNER JOIN submodules ON materials.id_submodule = submodules.id
WHERE materials.id_submodule = 4;

-- mencari nama, tingkat dari tabel tryouts yang memiliki tingkat tryout = menengah
SELECT nama, tingkat FROM tryouts WHERE tingkat = 'menengah';

-- mencari title, time, amount yang memiliki category = 'mos' pada tabel modules
SELECT title, time, amount, category FROM modules WHERE category = 'mos';

-- mencari nama, alamat email dan tipe autentifikai pada tabel users
SELECT name, email, auth_type FROM users WHERE auth_type = 'google';