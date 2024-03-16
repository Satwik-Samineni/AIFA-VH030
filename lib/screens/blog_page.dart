import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  final List<BlogPost> blogPosts = [
    BlogPost(
      title: '10 Modern Agricultural Techniques You Should Know',
      category: 'Agriculture',
      onTap: () {},
    ),
    BlogPost(
      title: 'Revolutionizing Farming with Agri-Tech Innovations',
      category: 'Agri-Technology',
      onTap: () {},
    ),
    BlogPost(
      title: 'Step-by-Step Guide to Implementing Vertical Farming',
      category: 'New Methods',
      onTap: () {},
    ),
    // Add more blog posts here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blogs'),
      ),
      body: ListView.builder(
        itemCount: blogPosts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                blogPosts[index].onTap();
              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          blogPosts[index].category,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          blogPosts[index].title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class BlogPost {
  final String title;
  final String category;
  final void Function() onTap;

  BlogPost({
    required this.title,
    required this.category,
    required this.onTap,
  });
}
