unit coba;
 
interface
 
uses StructureData;
 
procedure load(var tBuku : tabBuku; var tUser : tabUser; var tPeminjaman : tabHistoryPeminjaman; var tPengembalian : tabHistoryPengembalian; var tKehilangan : tabKehilangan);

function readTanggal(var DateString : string):tanggal;

implementation

function readTanggal(var DateString : string):tanggal;
begin
	readTanggal.DD 		:= copy(DateString,1,2);
	readTanggal.MM 		:= copy(DateString,4,5);
	readTanggal.YYYY	:= copy(DateString,7,10);
end;


procedure load(var tBuku : tabBuku; var tUser : tabUser; var tPeminjaman : tabHistoryPeminjaman; var tPengembalian : tabHistoryPengembalian; var tKehilangan : tabKehilangan);
var
	ProcessingFile 	: TextFile;
	filename		: string;
	baris			: string;
	stringTanggal	: string;
begin
	write('Masukkan nama File Buku: ');
	readln(filename);
	assign(ProcessingFile, filename);
	reset(ProcessingFile);
	tBuku.Neff := 0;
		while not(EOF(ProcessingFile)) do begin
			tBuku.Neff := tBuku.Neff + 1;
			readln(ProcessingFile,baris);
			
			tBuku.tab[tBuku.Neff].ID_Buku := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tBuku.tab[tBuku.Neff].ID_Buku);
			
			tBuku.tab[tBuku.Neff].Judul_Buku := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tBuku.tab[tBuku.Neff].Judul_Buku);
			
			tBuku.tab[tBuku.Neff].Author := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tBuku.tab[tBuku.Neff].Author);
			
			tBuku.tab[tBuku.Neff].Jumlah_Buku := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tBuku.tab[tBuku.Neff].Jumlah_Buku);
			
			tBuku.tab[tBuku.Neff].Tahun_Penerbit := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tBuku.tab[tBuku.Neff].Tahun_Penerbit);
			
			tBuku.tab[tBuku.Neff].Kategori := baris;
			writeln(tBuku.tab[tBuku.Neff].Kategori);
		end;

	write('Masukkan nama File User: ');
	readln(filename);
	assign(ProcessingFile, filename);
	reset(ProcessingFile);
	tUser.Neff := 0;
		while not(EOF(ProcessingFile)) do begin
			tUser.Neff := tUser.Neff + 1;
			readln(ProcessingFile,baris);
			
			tUser.tab[tUser.Neff].Nama := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tUser.tab[tUser.Neff].Nama);
			
			tUser.tab[tUser.Neff].Alamat := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tUser.tab[tUser.Neff].Alamat);
			
			tUser.tab[tUser.Neff].Username := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tUser.tab[tUser.Neff].Username);
			
			tUser.tab[tUser.Neff].Password := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tUser.tab[tUser.Neff].Password);
			
			tUser.tab[tUser.Neff].Role := baris;
			writeln(tUser.tab[tUser.Neff].Role);
		end;

	write('Masukkan nama File Peminjaman: ');
	readln(filename);
	assign(ProcessingFile, filename);
	reset(ProcessingFile);
	tPeminjaman.Neff := 0;
		while not(EOF(ProcessingFile)) do begin
			tPeminjaman.Neff := tPeminjaman.Neff + 1;
			readln(ProcessingFile,baris);
			
			tPeminjaman.tab[tPeminjaman.Neff].Username := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tPeminjaman.tab[tPeminjaman.Neff].Username);
			
			tPeminjaman.tab[tPeminjaman.Neff].ID_Buku := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tPeminjaman.tab[tPeminjaman.Neff].ID_Buku);
			
			stringTanggal := copy(baris,1,pos(',',baris)-1);
			tPeminjaman.tab[tPeminjaman.Neff].Tanggal_Peminjaman := readTanggal(stringTanggal);
			delete(baris,1,pos(',',baris));
			writeln(stringTanggal);
			
			stringTanggal := copy(baris,1,pos(',',baris)-1);
			tPeminjaman.tab[tPeminjaman.Neff].Tanggal_Batas_Pengembalian := readTanggal(stringTanggal);
			delete(baris,1,pos(',',baris));
			writeln(stringTanggal);
			
			tPeminjaman.tab[tPeminjaman.Neff].Status_Pengembalian := baris;
			writeln(tPeminjaman.tab[tPeminjaman.Neff].Status_Pengembalian);
		end;
		
	write('Masukkan nama File Pengembalian: ');
	readln(filename);
	assign(ProcessingFile, filename);
	reset(ProcessingFile);
	tPengembalian.Neff := 0;
		while not(EOF(ProcessingFile)) do begin
			tPengembalian.Neff := tPengembalian.Neff + 1;
			readln(ProcessingFile,baris);
			
			tPengembalian.tab[tPengembalian.Neff].Username := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tPengembalian.tab[tPengembalian.Neff].Username);
			
			tPengembalian.tab[tPengembalian.Neff].ID_Buku := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tPengembalian.tab[tPengembalian.Neff].ID_Buku);
			
			stringTanggal := baris;
			tPengembalian.tab[tPengembalian.Neff].Tanggal_Pengembalian := readTanggal(stringTanggal);
			writeln(stringTanggal);
		end;
		
	write('Masukkan nama File Buku Hilang: ');
	readln(filename);
	assign(ProcessingFile, filename);
	reset(ProcessingFile);
	tKehilangan.Neff := 0;
		while not(EOF(ProcessingFile)) do begin
			tKehilangan.Neff := tKehilangan.Neff + 1;
			readln(ProcessingFile,baris);
			
			tKehilangan.tab[tKehilangan.Neff].Username := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tKehilangan.tab[tKehilangan.Neff].Username);
			
			tKehilangan.tab[tKehilangan.Neff].ID_Buku := copy(baris,1,pos(',',baris)-1);
			delete(baris,1,pos(',',baris));
			writeln(tKehilangan.tab[tKehilangan.Neff].ID_Buku);
			
			stringTanggal := baris;
			tKehilangan.tab[tKehilangan.Neff].Tanggal_Laporan := readTanggal(stringTanggal);
			writeln(stringTanggal);
		end;

	writeln('File perpustakaan berhasil dimuat!');
end;

	
end.

	