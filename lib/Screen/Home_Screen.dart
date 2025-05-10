import 'package:app_design_implementation/Widgets/Home_Card_Widget.dart';
import 'package:app_design_implementation/Widgets/Home_Shimmer_Card_Widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _tabs = ['All', 'Professional', 'Creative', 'Modern', 'Basic'];
  final List<String> _imagePaths = [
    'assets/template1.png',
    'assets/template2.png',
    'assets/template3.png',
    'assets/template4.png',
  ];
  final List<String> _titles = [
    "Basic CV",
    "Professional CV",
    "Creative CV",
    "Modern CV",
  ];
  final List<String> _descriptions = [
    "A simple and clean CV template.",
    "A professional layout for your career.",
    "A creative design for artistic professions.",
    "A modern and elegant template.",
  ];

  bool _isLoading = true; // Loading state for templates
  int _selectedTab = 0; // Selected tab index

  @override
  void initState() {
    super.initState();
    // Simulate loading with delay
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false; // Set loading state to false after 2 seconds
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1A2B), // Set background color
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1A2B), // Set app bar background color
        elevation: 0, // Remove app bar shadow
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white, size: 28),
            onPressed: () => Scaffold.of(context).openDrawer(), // Open drawer on tap
          ),
        ),
        title: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Color(0xFFBFA0FF), Colors.white],
          ).createShader(bounds),
          child: Text(
            'CV Templates',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF2A2540), // Set drawer background color
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3B3054), Color(0xFF1E1A2B)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    foregroundImage: AssetImage('assets/Profile.png'), // User profile image
                  ),
                  SizedBox(height: 12),
                  Text('John Doe', style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            ...[
              ['Home', Icons.home],
              ['Templates', Icons.library_books_outlined],
              ['Profile', Icons.person],
              ['Settings', Icons.settings],
            ].map((item) {
              return ListTile(
                leading: ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [Color(0xFFBFA0FF), Colors.white],
                  ).createShader(bounds),
                  child: Icon(item[1] as IconData, color: Colors.white),
                ),
                title: ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [Color(0xFFBFA0FF), Colors.white],
                  ).createShader(bounds),
                  child: Text(
                    item[0] as String,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () => Navigator.pop(context), // Close drawer on tap
              );
            }).toList(),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),

            // Search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search, color: Colors.grey[300]),
                  hintText: 'Search CVs',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Tabs for filtering templates
            SizedBox(
              height: 43,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _tabs.length,
                itemBuilder: (context, index) {
                  final isSelected = index == _selectedTab;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTab = index; // Change selected tab
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      margin: EdgeInsets.only(right: 12),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        gradient: isSelected
                            ? LinearGradient(
                                colors: [Color(0xFFBFA0FF), Color(0xFF836FFF)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                            : null,
                        color: isSelected ? null : Color(0xFF2D2B40),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        _tabs[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.grey[300],
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),

            // Title for trending templates section
            Text(
              'Trending Templates',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),

            // Grid for displaying templates
            Expanded(
              child: _isLoading
                  ? GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.72,
                      children: List.generate(4, (_) => HomeShimmerCardWidget()), // Shimmer effect while loading
                    )
                  : GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.65,
                      children: List.generate(4, (index) {
                        return HomeCardWidget(
                          imagePath: _imagePaths[index],
                          title: _titles[index],
                          description: _descriptions[index],
                          price: (index + 1) * 10, // Set price based on index
                        );
                      }),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
