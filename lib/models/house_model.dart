class HouseModel {
  int id;
  String title;
  String description;
  String imgUrl;
  int price;

  HouseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imgUrl,
    required this.price,
  });
}

List<HouseModel> houseList = [
  HouseModel(
    id: 1,
    title: "Tipe 21/24",
    description: "Rumah tipe 21 adalah rumah yang paling kecil dibangun oleh pengembang perumahan, dengan ukuran rumah berkisar 3 x 7 meter. Rumah tipe ini biasanya terdiri dari satu carport terbuka, dua kamar tidur, satu ruangan multifungsi, sebagai dapur dan ruang makan, atau ruang keluarga dan satu kamar mandi.\n\nTipe rumah ini tergolong rumah sederhana dan hanya terdiri dari satu kamar tidur dan terkadang bahkan memiliki dapur yang berada terpisah pada bagian halaman belakang. Tipe rumah ini juga kerap menjadi pilihan investasi dengan menjadikannya rumah sewa, karena ukuran dan harga yang murah tentu pilihan menyewa tipe rumah satu ini lebih banyak dipilih.\n\nKelebihan dan alasan utama banyak masyarakat memilih rumah tipe ini tak lain karena harga yang cukup terjangkau. Bagi masyarakat berpenghasilan menengah ke bawah, rumah dengan tipe ini adalah solusi cepat memiliki rumah pribadi sebelum harga rumah terlampau tinggi.",
    imgUrl: "assets/images/house_list/24.png",
    price: 200,
  ),
  HouseModel(
    id: 2,
    title: "Tipe 36",
    description: "Salah satu hunian dengan ukuran yang pas dan tepat untuk Anda yang baru berkeluarga adalah rumah dengan type 36. Apakah rumah type 36 itu? Rumah type 36 adalah sebuah rumah yang dibangun dan mempunyai luas bangunan sebesar 36 meter persegi.\n\nRumah tipe ini biasanya dibangun pada sebuah tanah yang berukuran minimal sebesar 60 meter persegi hingga 72 meter persegi. Secara umum, biasanya rumah dengan tipe ini memiliki 2 buah kamar tidur. Selain itu terdapat juga sebuah ruang tamu yang menyatu dengan ruang keluarga ataupun dapur.\n\nRumah tipe ini juga biasanya mempunyai sebuah kamar mandi yang berada di tengah antara kamar tidur utama dan kamar tidur anak. Berbeda dengan rumah bertipe 21, rumah ini umumnya sangat cocok untuk Anda yang sudah berkeluarga dan mempunyai anak serta membutuhkan rumah yang lebih lapang dan lega.",
    imgUrl: "assets/images/house_list/36.png",
    price: 300,
  ),
  HouseModel(
    id: 3,
    title: "Tipe 45",
    description: "Desain rumah type 45 dengan berbagai gaya seperti minimalis masih menjadi dambaan banyak orang. Tak heran jika pihak pengembang menyesuaikan permintaan dengan menyediakan desain rumah type 45 dengan bermacam macam gaya. Mulai dari tipe perumahan, cluster, dan townhouse tersedia dengan kisaran harga murah sampai yang fantastis.\n\nLantas, alasan apa saja yang menyebabkan permintaan desain rumah type 45 minimalis ini tinggi? Ternyata ada keuntungan rumah type 45 yang mungkin banyak orang tidak ketahui.\n\nSelain pemanfaatan ruang atau luas lahan yang efektif, rumah minimalis biasanya akan menghabiskan anggaran yang lebih sedikit dalam aspek perancangan, pembangunan, dan perawatan dibandingkan dengan rumah besar.\n\nKemudian, desain rumah type 45 minimalis juga dirasa lebih fleksibel karena denah rumah minimalis sengaja dirancang agar simple, efisien, dan efektif.\n\nDengan luas yang cukup lega, Anda dapat memiliki desain rumah type 45 dengan 3 kamar tidur dan 2 kamar mandi. Ruang tamu dan keluarga dapat Anda jadikan spot favorit untuk menghabiskan waktu bersama saat bersantai di malam hari dan juga akhir pekan.\n\nSelain itu, desain rumah type 45 yang cukup minimalis ini juga memungkinkan Anda untuk memiliki sebuah teras atau taman mini di depan halaman rumah.",
    imgUrl: "assets/images/house_list/45.png",
    price: 525,
  ),
  HouseModel(
    id: 4,
    title: "Tipe 54",
    description: "Rumah type 54 artinya rumah dengan luas bangunan 54 meter persegi. Penulisan rumah type 54 biasanya diikuti dengan luas lahan seperti rumah type 54/120 atau rumah type 54/150.\n\nRumah type 54/120 artinya rumah dengan luas bangunan 54 meter persegi yang dibangun di lahan seluas 120 meter persegi. Rumah type 54 adalah tipe rumah dengan luasan yang baik untuk ditinggali satu keluarga inti dengan 1-2 anak (apabila anaknya adalah laki-laki saja atau perempuan saja).\n\nRumah type 54 ini adalah tipe rumah yang cukup banyak dicari oleh keluarga muda atau keluarga kecil yang ingin memiliki rumah dengan bujet yang murah, serta jangkauan lokasi yang menjadi faktor utama dalam mempertimbangkan jarak dalam aktivitas kesehariannya.\n\nSpesifikasi ruang rumah tipe 54 cocok bagi 1 keluarga inti dengan 1 dan 2 anak, karena ada ragam pilihan 2 kamar tidur dan ada pula yang memiliki 3 kamar tidur.",
    imgUrl: "assets/images/house_list/54.png",
    price: 580,
  ),
  HouseModel(
    id: 5,
    title: "Tipe 60",
    description: "Rumah type 60 merupakan jenis rumah yang bisa dikatakan tidak besar, tetapi juga tidak kecil. Rumah type 60 mempunyai ukuran yang cukup ideal, bagi mereka yang tinggal sendiri, bersama pasangan, ataupun untuk ditinggali bersama dengan keluarga.\n\nSesuai dengan namanya, rumah type 60 adalah rumah yang memiliki luas sebesar 60 meter persegi. Walaupun memiliki luas yang tidak begitu besar, tetapi ukuran rumah type 60 dapat berbeda-beda karena terkadang mempunyai ukuran panjang dan lebar yang berbeda pula.\n\nAda beberapa jenis rumah type 60 yang dipasarkan. Mulai dari 60/90, 60/72, dan 60/100. Arti dari 60/90 menunjukkan bahwa rumah tersebut memiliki luas bangunan 60 meter persegi dan luas tanah 90 meter persegi.\n\nMempunyai luas bangunan 60 meter persegi, jenis rumah type 60 tidak melulu memiliki dimensi 6 x 10 meter persegi. Ada juga rumah yang berukuran 6 x 12 meter persegi atau 8 x 7 meter persegi. Untuk desainnya sendiri, rumah type 60 dapat dibuat menjadi satu atau dua lantai, tergantung layout yang diinginkan.\n\nBiasanya, ciri khas rumah type 60 adalah rumah dengan gaya minimalis yang menonjolkan desain interior dan eksteriornya. Tipe rumah ini juga banyak mengambil bentuk geometris, seperti kotak, dan untuk desain interiornya mempunyai konsep open space agar memberikan kesan luas dan ruangan lebih optimal.",
    imgUrl: "assets/images/house_list/60.png",
    price: 600,
  ),
  HouseModel(
    id: 6,
    title: "Tipe 70",
    description: "Rumah type 70 adalah adalah rumah dengan luas bangunan 70 meter persegi. Rumah tipe ini dapat berupa rumah 1 lantai atau rumah 2 lantai, namun total luas bangunannya 70 meter persegi. Rumah tipe ini sangat cocok untuk para milenial. Luas bangunan yang cukup besar, namun harganya pun lebih terjangkau daripada luas rumah di atas 100 m2.\n\nAnda bisa menyesuaikan ruangan apa saja di dalam rumah dengan tipe ini sesuai dengan kebutuhan Anda. Seperti Anda bisa menjadikan rumah tipe ini dengan konsep desain dua lantai atau 1 lantai. Semuanya bisa Anda sesuaikan dengan kebutuhan dan desain yang diinginkan.\n\nRumah tipe ini bisa dibangun dengan desain konsep 2 lantai. Anda bisa menyediakan 3 kamar tidur, 1 kamar tidur utama di lantai 1 dan 2 kamar tidur lainnya di lantai 2.\n\nSelain itu Anda juga bisa menemukan 2 kamar mandi, 1 kamar mandi di lantai 1 dan 1 kamar mandi lainnya di lantai 2. Dengan hunian tipe 70 Anda juga bisa membuat taman kecil di bagian belakang rumah.\n\nKeluarga dengan anggota keluarga lebih dari empat orang memang lebih pas jika tinggal di rumah type 70. Dengan ukuran ini, rumah akan tetap terasa lapang meskipun ada empat atau lima ruang kamar tidur.",
    imgUrl: "assets/images/house_list/70.png",
    price: 800,
  ),
  HouseModel(
    id: 7,
    title: "Tipe 120",
    description: "Di kawasan elite, rumah type 120 sudah lazim. Ini merupakan tipe rumah mewah. Dengan dimensi 10x12 meter atau 8x15 meter dan berdiri di atas tanah seluas 150 meter persegi, tipe 120 jelas masuk dalam portofolio para pengembang yang terbiasa membangun perumahan mewah.\n\nPerihal kualitas bangunan, seharusnya tipe 120 sudah tak perlu disangsikan. Dengan tingkat harga yang menyasar segmen menengah ke atas, spesifikasi material bangunan biasanya sudah sangat menyesuaikan.\n\nUmumnya, rumah ini memiliki 3-4 kamar tidur, tiga kamar mandi, ruangan dapur tersendiri, ruang makan, ruang keluarga, ruang tamu, beranda belakang, dan carport yang bisa menampung dua mobil sekaligus. Tipe rumah luas dan besar seperti ini juga memungkinkan pemiliknya bereksplorasi desain dengan berbagai gaya arsitektur.",
    imgUrl: "assets/images/house_list/120.png",
    price: 999,
  ),
];
