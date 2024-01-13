part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  List<String> _appbarTittle = ['konsultasi', 'home', 'edukasi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: Center(
              child: AppBar(
            title: Text(
              _appbarTittle[_selectedIndex],
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.lightBlue[100],
            elevation: 2, // Tidak ada bayangan
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: null,
              ),
              IconButton(
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/75353116?v=4'), // Ganti dengan gambar profil Anda
                ),
                onPressed: null,
              ),
              SizedBox(width: 16),
            ],
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    // Tambahkan fungsi menu jika diperlukan
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
          ))),
      body: [
        const KonsultasiFragment(),
        const HomeFragment(),
        const EdukasiFragment(),
      ][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Konsultasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Edukasi',
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
