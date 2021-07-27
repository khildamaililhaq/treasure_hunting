**Untuk Menjalankan Code** 

`git clone https://github.com/khildamaililhaq/treasure_hunting.git`

Pastikan ruby sudah terinstall lalu

`ruby treasure_hunting.rb`

**Catatan**

Saya mengasumsikan pertanyaan adalah harta karun hanya ada satu, dan ada di ujung path, 
Jika harta karun lebih ada dari satu maka dianggap semua harta karun palsu

Tapi jika harta karun bisa lebih dari satu bisa dilakukan dengan uncomment code berikut

` # result = @search_count >= 1 ? 'Harta Karun' : 'Anda Tertipu'`

dan comment code diatasnya

` result = @search_count == 1 ? 'Harta Karun' : 'Anda tertipu'`
