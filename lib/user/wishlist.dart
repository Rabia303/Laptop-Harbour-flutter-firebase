import 'package:flutter/material.dart';

class WishListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Wish list",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your wish list',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 10),
            _buildCartItem("Laptop 1", "assets/images/appleimg.jpg", 39.99),
            _buildCartItem("Laptop 2", "assets/images/dell.jpg", 39.99),
            _buildCartItem("Laptop 3", "assets/images/hpimg.jpg", 39.99),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Suggested for you',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("See All"),
                ),
              ],
            ),
            SizedBox(height: 10),
            _buildSuggestedItem(
                "Laptop 4", "assets/images/appleimg.jpg", 39.99),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        backgroundColor: Colors.grey[850],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
      backgroundColor: Colors.grey[900],
    );
  }

  Widget _buildCartItem(String name, String image, double price) {
    return Card(
      color: Colors.grey[800],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Image.asset(image, fit: BoxFit.cover, width: 60),
        title: Text(name, style: TextStyle(color: Colors.white)),
        subtitle: Text("\$$price", style: TextStyle(color: Colors.white)),
        trailing: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Add to Cart"),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.grey[700],
          ),
        ),
      ),
    );
  }

  Widget _buildSuggestedItem(String name, String image, double price) {
    return Card(
      color: Colors.grey[800],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Image.asset(image, fit: BoxFit.cover, width: 60),
        title: Text(name, style: TextStyle(color: Colors.white)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("\$$price", style: TextStyle(color: Colors.white)),
            SizedBox(height: 4),
            Text(
              "Lorem ipsum dolor sit amet...",
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.favorite, color: Colors.white),
          onPressed: () {},
        ),
      ),
    );
  }
}
