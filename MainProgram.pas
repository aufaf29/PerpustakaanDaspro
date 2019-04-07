Program Main;
 
Uses StructureData, coba;
 
var
	tBuku			: tabBuku;
	tUser			: tabUser;
	tPeminjaman		: tabHistoryPeminjaman;
	tPengembalian		: tabHistoryPengembalian;
	tKehilangan		: tabKehilangan;
	Finish 			: boolean;
	Perintah		: string;
	i,j			: integer;
	ExitVar			: boolean;
	
begin
	ExitVar := False;
	repeat
		write('$ ');
		readln(Perintah);
		
		if (Perintah = 'register') then begin
			writeln('Belum ada subprogramnya maaf!!');
		end else if (Perintah = 'login') then begin
			writeln('Belum ada subprogramnya maaf!!');		
		end else if (Perintah = 'cari') then begin
			writeln('Belum ada subprogramnya maaf!!');		
		end else if (Perintah = 'caritahunterbit') then begin
			writeln('Belum ada subprogramnya maaf!!');		
		end else if (Perintah = 'pinjam_buku') then begin
			writeln('Belum ada subprogramnya maaf!!');
		end else if (Perintah = 'kembalikan_buku') then begin
			writeln('Belum ada subprogramnya maaf!!');		
		end else if (Perintah = 'lapor_hilang') then begin
			writeln('Belum ada subprogramnya maaf!!');		
		end else if (Perintah = 'lihat_laporan') then begin
			writeln('Belum ada subprogramnya maaf!!');		
		end else if (Perintah = 'tambah_buku') then begin
			writeln('Belum ada subprogramnya maaf!!');		
		end else if (Perintah = 'tambah_jumlah_buku') then begin
			writeln('Belum ada subprogramnya maaf!!');
		end else if (Perintah = 'riwayat') then begin
			writeln('Belum ada subprogramnya maaf!!');		
		end else if (Perintah = 'statistik') then begin
			writeln('Belum ada subprogramnya maaf!!');		
		end else if (Perintah = 'load') then begin
//			load(tBuku, tUser, tPeminjaman, tPengembalian, tKehilangan);
			load(tBuku,tUser,tPeminjaman,tPengembalian,tKehilangan);
		end else if (Perintah = 'save') then begin
			writeln('Belum ada subprogramnya maaf!!');		
		end else if (Perintah = 'cari_anggota') then begin
			writeln('Belum ada subprogramnya maaf!!');		
		end else if (Perintah = 'exit') then begin
			ExitVar := True;
		end else begin
			writeln('Masukan salah!');			
		end;
		
	until (ExitVar);
end.
