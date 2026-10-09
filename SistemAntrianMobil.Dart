import 'dart:io';

   var jalan = true;

   Map posA = {'plat': null};
   Map posB = {'plat': null};
   Map posC = {'plat': null};
   List waitinglist = [];

void main() {
while (jalan == true){
   tampilmenu();
    stdout.write('Pilih menu (1-5): ');
    String menu = stdin.readLineSync()!;
    switch(menu){
        case '1':
        tambahlist();
        break;
        case '2':
        lihatlist();
        break;
        case '3':
        lihatpos();
        break;
        case '4':
        selesaikanpos();
        break;
        case '5':
        print('Anda keluar dari proogram');
        jalan=false;
        break;
        default:
        print('Menu tidak tersedia');
    }
   }
}

void tampilmenu() {
    print('===============================');
    print('----------WASH & CLEAN---------');
    print('===============================');
    print('1. Tambah Waiting List');
    print('2. Lihat Waiting List');
    print('3. Lihat Pos');
    print('4. Selesaikan Pos');
    print('5. Keluar dari Aplikasi');
    print('===============================');
    

}
    

void tambahlist(){
    print('===============================');
    print('----------MASUKAN PLAT---------');
    print('===============================');
    stdout.write('Masukan Plat Mobil: ');
    String plat = stdin.readLineSync()!.trim().toUpperCase();
    
    if (posA['plat']==null){
      posA['plat'] = plat;

      print('Mobil $plat Telah Masuk Ke Pos A.');
    }else if (posB['plat']==null){
      posB['plat'] = plat;
      print('Mobil $plat Telah Masuk Ke Pos B.');
    }else if (posC['plat']==null){
      posC['plat'] = plat;
      print('Mobil $plat Telah Masuk Ke Pos C.');
    }else{
      waitinglist.add(plat);
      print('Pos sudah penuh,Mobil $plat masuk waiting list.');
    }

}

void lihatlist(){
    print('===============================');
    print('------DAFTAR WAITING LIST------');
    print('===============================');
    if (waitinglist.isEmpty){
      print('List Menu Masih Kosong');
    }else{
      for (int i =0; i < waitinglist.length ; i++){
        print('${i+1}.${waitinglist[i]}');
      }
    }
    
    if (posA['plat']==null){
      posA['plat'] = waitinglist[0];
      waitinglist.removeAt(0);
      print('Mobil ${waitinglist[0]} Telah Masuk Ke Pos A.');
    }else if (posB['plat']==null){
      posB['plat'] = waitinglist[0];
      waitinglist.removeAt(0);
      print('Mobil ${waitinglist[0]} Telah Masuk Ke Pos B.');
    }else if (posC['plat']==null){
      posC['plat'] =waitinglist[0];
      waitinglist.removeAt(0);
      print('Mobil ${waitinglist[0]} Telah Masuk Ke Pos C.');
    }
}

void lihatpos(){
    print('===============================');
    print('--------STATUS POS CUCI--------');
    print('===============================');
    if (posA['plat'] == null){
      print('pos A = Kosong');
    }else{
      print('Pos A ${posA['plat']}');
    }
    if (posB['plat'] == null){
      print('pos B = Kosong');
    }else{
      print('Pos B ${posB['plat']}');
    }
     if (posC['plat'] == null){
      print('pos C = Kosong');
    }else{
      print('Pos C ${posC['plat']}');
    }
}

void selesaikanpos(){
    print('===============================');
    print('--------STATUS POS CUCI--------');
    print('===============================');
  print('\n--- SELEKSI POS ---');
  print('1. Pos A');
  print('2. Pos B');
  print('3. Pos C');

  stdout.write('Pilih pos yang ingin diselesaikan: ');
  String pilihan = stdin.readLineSync()!;

  if (pilihan == '1') {
    if (posA['plat'] != null) {
      print('Mobil ${posA['plat']} selesai dicuci.');
      posA['plat'] = null;
    } else {
      print('Pos A masih kosong.');
    }
  } else if (pilihan == '2') {
    if (posB['plat'] != null) {
      print('Mobil ${posB['plat']} selesai dicuci.');
      posB['plat'] = null;
    } else {
      print('Pos B masih kosong.');
    }
  } else if (pilihan == '3') {
    if (posC['plat'] != null) {
      print('Mobil ${posC['plat']} selesai dicuci.');
      posC['plat'] = null;
    } else {
      print('Pos C masih kosong.');
    }
  } else {
    print('Pos Tidak Ada');
  }

}
