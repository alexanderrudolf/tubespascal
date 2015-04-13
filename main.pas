const
	coKapasitasMaksimum = 100;
	
type
    Baju = record
        sNamaBaju               : string;
        sKategoriBaju           : string;
        sGenderPemakai          : string;
        sWarnaBaju              : string;
        rBeratPerBajuKg         : real;
        sBahanBaju              : string;
        iHarga                  : integer;
        iKetersediaanUkuranS    : integer;
        iKetersediaanUkuranM    : integer;
        iKetersediaanUkuranL    : integer;
        iKetersediaanUkuranXL   : integer;
        iJumlahPembelian        : integer;
        iGrosirDiskon           : integer;
    end; 
    
    Pengiriman = record
        sNamaEkspedisi          : string;
        sJenisLayananPengiriman : string;
        sNamaKota               : string;
        iBiayaKirimPerKg        : integer;
        iLamaPengiriman         : integer;
    end;

    Keranjang = record
        sNamaBaju               : string;
        sWarnaBaju              : string;
        rBeratPerBajuKg         : real;
        sBahanBaju              : string;
        iHarga                  : integer;
        iJumlahBeliS            : integer;
        iJumlahBeliM            : integer;
        iJumlahBeliL            : integer;
        iJumlahBeliXL           : integer;
    end;

    Transaksi = record
        sNamaBaju               : string;
        sWarnaBaju              : string;
        rBeratPerBajuKg         : real;
        sBahanBaju              : string;
        iHarga                  : integer;
        iJumlahBeliS            : integer;
        iJumlahBeliM            : integer;
        iJumlahBeliL            : integer;
        iJumlahBeliXL           : integer;
        sNamaEkspedisi          : string;
        sJenisLayananPengiriman : string;
        sNamaKotaTujuan         : string;
        iBiayaKirimPerKg        : integer;
        iLamaPengiriman         : integer;
        sTanggalKirim           : string;
    end;

    StokBaju = array [1..coKapasitasMaksimum] of Baju;
    
    EkspedisiPengiriman = array [1..coKapasitasMaksimum] of Pengiriman;
    
    KeranjangBelanja = array [1..coKapasitasMaksimum] of Keranjang;
    
    TransaksiBelanja = array [1..coKapasitasMaksimum] of Transaksi;
    
    
    
// Deklarasi Variabel Global
var
    eStokBaju               : StokBaju;
    eEkspedisiPengiriman    : EkspedisiPengiriman;
    eKeranjangBelanja       : KeranjangBelanja;
    eTransaksiBelanja       : TransaksiBelanja;



// Rancangan File Eksternal
// + fStoeKBaju.dat
// + fEkpedisiPengiriman.dat
// + fKeranjangBelanja.dat
// + fTransaksiBelanja


//----------------------------------------------
// F1
// Membaca dan mengolah isi berkas semua file *.dat kemudian menyimpannya
// ke dalam enumerasi eSB, eEP, eKB, eTB
{
  Contoh i/o
}
{ 
  I.S. : 
  F.S. :
}
procedure load(var eSB : StokBaju;
               var eEP : EkspedisiPengiriman;
               var eKB : KeranjangBelanja;
               var eTB : TransaksiBelanja);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F2
// Mengolah eSB untuk mendapatkan 3 baju paling populer berdasarkan banyaknya
// pembelian baju tersebut lalu mencetaknya ke layar
{
> showPopulars
> 1. Blouse Etnik Sasmira
  Warna: Biru
  S: 10 M: 15 L: 20 XL: 10
  Rp 30000
  Banyak dibeli: 30 kali
  
  2. Kemeja kotak-kotak
  Warna: Biru
  S: 10 M: 15 L: 20 XL: 10
  Rp 40000
  Banyak dibeli: 16 kali

  3. Kaos kaki panda
  Warna: Putih-hitam
  S: 10 M: 15 L: 20 XL: 10
  Rp 15000
  Banyak dibeli: 7 kali
}
{ 
  I.S. : 
  F.S. :
}
procedure showPopulars(eSB : StokBaju);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F3
// Menampilkan detail baju berdasarkan nama baju
{
> showDetailProduct
> Masukkan nama baju: Kemeja kotak-kotak
> Detail Kemeja kotak-kotak
  Kategori baju: Kemeja
  Gender pemakai: Laki-laki
  Warna baju: Abu-abu
  Berat per baju Kg: 0.1
  Bahan baju: katun
  Harga: Rp 500000
  Tersedia S: 10 M: 15 L: 20 XL:10
  Grosir diskon: 20
}
{ 
  I.S. : 
  F.S. :
}
procedure showDetailProduct(eSB : StokBaju);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F4
// Mencari dan menampilkan daftar baju berdasarkan kata kunci dari pengguna.
// Pencarian menggunakan kata kunci nama baju, kategori baju, dan warna baju
{
  Contoh i/o
}
{ 
  I.S. : 
  F.S. :
}
procedure searchClothesByKeyword(eSB : StokBaju);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F5
// Mengurutkan dan menampilkan baju berdasarkan harganya
{
  Contoh i/o
}
{ 
  I.S. : 
  F.S. :
}
procedure sortPrice(eSB : StokBaju);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F6
// Menampilkan baju berdasarkan jenis baju, baju laki-laki/perempuan, ukuran,
// warna. Filter yang digunakan memungkinkan multiple filter
{
> filterClothes
> gender: perempuan
> kategori: semua
> ukuran: semua
> warna: pink
> 1. Kemeja polkadot
  Warna: Pink
  S: 10 M: 15 L: 20 XL: 10
  Rp 45000
  
  2. Kaos kaki rabbit
  Warna: pink
  S: 10 M: 15 L: 20 XL: 10
  Rp 15000
  
> filterClothes
> gender: laki-laki
> kategori: semua
> ukuran: semua
> warna: pink
> barang tidak ditemukan
}
{ 
  I.S. : 
  F.S. :
}
procedure filterClothes(eSB : StokBaju);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F7
// Menampilkan baju berdasarkan harga yang paling murah dan/atau yang paling
// mahal, sebelum/sesudah diskon grosir
{
  Contoh i/o
}
{ 
  I.S. : 
  F.S. :
}
procedure filterByPrice(eSB : StokBaju);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F8
// Mencari dan menampilkan daftar barang yang akan dikirim ke kota tertentu.
// Pencarian tidak hanya ke kota tertentu saja tetapi bisa juga untuk
// menampilkan semuanya ke seluruh kota
{
> showExpedition
> Masukkan nama kota: Batam
> Layanan tersedia: TIKI, JNE

> showExpedition
> Masukkan nama kota: Maluku
> Layanan tersedia: tidak tersedia

> showExpedition
> Masukkan nama kota: semua
> Layanan tersedia: TIKI, JNE, Pos Indonesia
}
{ 
  I.S. : 
  F.S. :
}
procedure showExpedition(eEP : EkspedisiPengiriman);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F9
// Meminta nama baju dari pengguna, mengecek apakah baju yang dicari pengguna
// ada pada eSB, jika ada maka masukkan ke dalam eKB lalu munculkan pesan
// berhasil, jika tidak ditemukan munculkan pesan kesalahan
{
> addToCart
> Masukkan nama baju: Kemeja kotak-kotak
> Banyak ukuran S yang dipesan: 0
> Banyak ukuran M yang dipesan: 1
> Banyak ukuran L yang dipesan: 3
> Banyak ukuran XL yang dipesan: 0
> Baju berhasil ditambahkan ke dalam keranjang belanja
}
{ 
  I.S. : 
  F.S. :
}
procedure addToCart(eSB : StokBaju; var eKB : KeranjangBelanja);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F10
// Menghapus salah satu atau semua barang belanjaan yang ada pada eKB
// dengan cara meminta nama baju yang ingin dihapus dan jika baju tersebut
// ada pada eKB maka hapus, jika tidak maka keluarkan pesan kesalahan
{
> removeFromCart
> Barang yang ada di keranjang belanja: 
  1. Kemeja polkadot
  Warna: Pink
  S: 10 M: 15 L: 20 XL: 10
  Rp 45000
  
  2. Kaos kaki rabbit
  Warna: pink
  S: 10 M: 15 L: 20 XL: 10
  Rp 15000

> Masukkan nomor barang yang akan dihapus: 2
> Barang berhasil dihapus
}
{ 
  I.S. : 
  F.S. :
}
procedure removeFromCart(var eKB : KeranjangBelanja);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F11
// Menampilkan isi eKB saat ini serta menghitung dan menampilkan harga total
// dan berat total barang berdasarkan isi eKB saat ini
{
> calculatePrice
> 1. Kemeja polkadot
  Warna: Pink
  M: 1
  Berat: 0.2 kg
  Rp 45000 x 1 = Rp 45000

  2. Kaos kaki rabbit
  Warna: pink
  S: 2
  Berat: 0.1 kg
  Rp 15000 x 2 = Rp 30000

  3. Blouse Etnik Sasmira
  Warna: Biru
  L: 1
  Berat: 0.2 kg
  Rp 30000 x 1 = Rp 30000
  
  Total: Rp 105000
}
{ 
  I.S. : 
  F.S. :
}
procedure calculateEPrice(eKB : KeranjangBelanja);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F12
// Meminta masukan kota tujuan pengirim dan jenis jasa pengiriman, lalu
// menghitung dan menampilkan total biaya yang harus dibayarkan oleh
// pembeli berdasarkan ... (baca lebh lanjut spek tugas besar.pdf)
{
> checkout
> Masukkan kota tujuan: Bandung
> Nama Ekspedisi: JNE
> Jenis Layanan: YES
> Tanggal Kirim: 4/9/2015
> 1. Kemeja polkadot
  Warna: Pink
  M: 1
  Berat: 0.2 kg
  Rp 45000 x 1 = Rp 45000

  2. Kaos kaki rabbit
  Warna: pink
  S: 2
  Berat: 0.1 kg
  Rp 15000 x 2 = Rp 30000

  3. Blouse Etnik Sasmira
  Warna: Biru
  L: 1
  Berat: 0.2 kg
  Rp 30000 x 1 = Rp 30000
  
  Harga Baju = Rp 105000
  Ongkos Kirim = 0.5 x Rp 18000 = 9000
  Total = Rp 114000
  Tanggal Sampai : 5/9/2015
}
{ 
  I.S. : 
  F.S. :
}
procedure checkout(eKB : KeranjangBelanja; var eTB : TransaksiBelanja);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F13
// Setelah dilakukan checkout maka jumlah baju yang ada pada eSB berkurang
// lakukan update jumlah stok baju yang bekurang
{
  Contoh i/o
}
{ 
  I.S. : 
  F.S. :
}
procedure updateClothes(eKB : KeranjangBelanja; var eSB : StokBaju);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F14
// Deskripsi ...
{
  Contoh i/o
}
{ 
  I.S. : 
  F.S. :
}
procedure discountGrosir(var eKB : KeranjangBelanja);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F15
// cukup jelas ... (baca lebh lanjut spek tugas besar.pdf)
{
> showTransaction
> Riwayat Pembelian 
  4/9/2015
    1. Blouse Etnik Sasmira
    Warna: Pink
    Ukuran S: 1, M: 1

    2. Kaos kaki rabbit
    Warna: Pink
    Ukuran S: 2

    3. Kemeja polkadot
    Warna: Biru
    Ukuran M: 1, L: 2

    Total harga : Rp 235000

  29/8/2015
    1. Kemeja kotak-kotak
    Warna: Biru
    Ukuran M: 1, L: 2

    Total harga : Rp 175000

  15/8/2015
    1. Jaket Cordova
    Warna: Putih
    Ukuran L: 2, XL: 1

    2. Kaos Oblong
    Warna: Hitam
    Ukuran L: 5

    Total harga: Rp 204500
}
{ 
  I.S. : 
  F.S. :
}
procedure showTransaction(eTB : TransaksiBelanja);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F16
// Mengembalikan uang konsumen dari barang yang cacat atau rusak
// cek jumlah uang yang harus dikembalikan pada eSB
{
  Contoh i/o
}
{ 
  I.S. : 
  F.S. :
}
procedure retur(eSB : StokBaju);
// Algoritma
begin
{

    tulis kode disini ...

}
end;


//----------------------------------------------
// F17
// cukup jelas ... (baca lebh lanjut spek tugas besar.pdf)
{
> exit
> Terima Kasih :) Berkunjung lagi ya !
}
{ 
  I.S. : 
  F.S. :
}
procedure exit(    eSB : StokBaju;
                   eEP : EkspedisiPengiriman;
                   eKB : KeranjangBelanja;
                   eTB : TransaksiBelanja;
               var bS  : boolean);
// Algoritma
begin
    writeln('> Terima Kasih :) Berkunjung lagi ya !');
    bS := true;
end;


//----------------------------------------------
// bacaPerintah
// Deskripsi ...
{
  Contoh i/o
}
{ 
  I.S. : 
  F.S. :
}
procedure bacaPerintah(var eSB      : StokBaju;
                       var eEP      : EkspedisiPengiriman;
                       var eKB      : KeranjangBelanja;
                       var eTB      : TransaksiBelanja;
                       var bS : boolean);
// Deklarasi variabel lokal
var
    sPerintah   : string;
// Algoritma
begin
    write('> ');
    readln(sPerintah);
    case sPerintah of
        'load'                      : load(eSB, eEP, eKB, eTB);
        'showPopulars'              : showPopulars(eSB);
        'showDetailProduct'         : showDetailProduct(eSB);
        'searchClotheeSByKeyword'   : searchClothesByKeyword(eSB);
        'sortPrice'                 : sortPrice(eSB);
        'filterClothes'             : filterClothes(eSB);
        'filterByPrice'             : filterByPrice(eSB);
        'showExpedition'            : showExpedition(eEP);
        'addToCart'                 : addToCart(eSB, eKB);
        'removeFromCart'            : removeFromCart(eKB);
        'calculateEPrice'           : calculateEPrice(eKB);
        'checkout'                  : checkout(eKB, eTB);
        'updateClothes'             : updateClothes(eKB, eSB);
        'discountGrosir'            : discountGrosir(eKB);
        'showTransaction'           : showTransaction(eTB);
        'retur'                     : retur(eSB);
        'exit'                      : exit(eSB, eEP, eKB, eTB, bS);
        else                          writeln('> Perintah salah');
    end;
end;


//----------------------------------------------
// Toko Online
// Deskripsi ...
{
  Contoh i/o
}
{ 
  I.S. : 
  F.S. :
}
procedure tokoOnline(var eSB : StokBaju;
                     var eEP : EkspedisiPengiriman;
                     var eKB : KeranjangBelanja;
                     var eTB : TransaksiBelanja);
// Deklarasi variabel lokal
var
    bSelesai    : boolean;
// Algoritma
begin
    bSelesai := FALSE;
    while not(bSelesai) do
        bacaPerintah(eSB, eEP, eKB, eTB, bSelesai);
end;


//----------------------------------------------
// Algoritma program utama
begin
    tokoOnline(eStokBaju, eEkspedisiPengiriman, eKeranjangBelanja, eTransaksiBelanja);
end.
