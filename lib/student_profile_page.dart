import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF303F9F); // Refined Indigo 700
    const secondaryColor = Color(0xFF3F51B5); // Classic Indigo 500

    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F9),
      appBar: AppBar(
        title: const Text(
          'Student Profile',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Profile Avatar (Visual Change 1: Layered dual-ring circular avatar with custom depth and initials)
                const Center(
                  child: CircleAvatar(
                    radius: 58,
                    backgroundColor: primaryColor,
                    child: CircleAvatar(
                      radius: 54,
                      backgroundColor: secondaryColor,
                      child: Text(
                        'BJB',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Student Name and Course
                const Text(
                  'Brett Josh B. Binasbas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                    letterSpacing: 0.3,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'BS Information Technology',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 24),

                // Student Details (Visual Change 2: Styled Card with rounded corners, custom dividers, and elevation)
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.badge, color: primaryColor),
                          title: Text(
                            'Student Number',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text('560382'),
                        ),
                        Divider(height: 1, indent: 16, endIndent: 16),
                        ListTile(
                          leading: Icon(Icons.school, color: primaryColor),
                          title: Text(
                            'Year Level and Section',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text('3rd Year - CCE106'),
                        ),
                        Divider(height: 1, indent: 16, endIndent: 16),
                        ListTile(
                          leading: Icon(Icons.email, color: primaryColor),
                          title: Text(
                            'Email Address',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text('b.binasbas.560382@umindanao.edu.ph'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // About Me Section
                Row(
                  children: const [
                    Icon(Icons.person, color: primaryColor, size: 22),
                    SizedBox(width: 8),
                    Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'I am a 3rd-year Information Technology student passionate about software engineering, game development, and modern technologies. '
                      'I love vibe-coding, creating animations, and exploring creative digital projects while continuously learning new tools and frameworks.',
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.6,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Hobbies and Interests Section (Visual Change 3: Themed Chips with category icons and wrap layout)
                Row(
                  children: const [
                    Icon(Icons.interests, color: primaryColor, size: 22),
                    SizedBox(width: 8),
                    Text(
                      'Hobbies and Interests',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Chip(
                      avatar: Icon(Icons.code, size: 18, color: primaryColor),
                      label: Text('Coding'),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      avatar: Icon(Icons.terminal, size: 18, color: primaryColor),
                      label: Text('Vibe-Coding'),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      avatar: Icon(Icons.sports_esports, size: 18, color: primaryColor),
                      label: Text('Gaming'),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      avatar: Icon(Icons.videogame_asset, size: 18, color: primaryColor),
                      label: Text('Game Dev'),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      avatar: Icon(Icons.animation, size: 18, color: primaryColor),
                      label: Text('Animations'),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      avatar: Icon(Icons.tv, size: 18, color: primaryColor),
                      label: Text('Anime'),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      avatar: Icon(Icons.music_note, size: 18, color: primaryColor),
                      label: Text('Music & Singing'),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      avatar: Icon(Icons.lightbulb_outline, size: 18, color: primaryColor),
                      label: Text('Learning New Stuff'),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
