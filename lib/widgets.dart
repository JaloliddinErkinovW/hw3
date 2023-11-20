import 'package:flutter/material.dart';

class TypeWidget extends StatelessWidget {
  final String text;

  const TypeWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  final String imagePath;

  const ImageWidget({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 150,
        width: 150,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CommentTextField extends StatefulWidget {
  @override
  _CommentTextFieldState createState() => _CommentTextFieldState();
}

class _CommentTextFieldState extends State<CommentTextField> {
  final TextEditingController _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _commentController,
        decoration: InputDecoration(
          labelText: 'Enter your comment',
          border: OutlineInputBorder(),
        ),
        maxLines: 3,
        keyboardType: TextInputType.multiline,
      ),
    );
  }
}

class SaveButton extends StatefulWidget {
  @override
  _SaveButtonState createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  bool _isSaved = false;

  @override
  Widget build(BuildContext context) {
    return _isSaved ? _buildSavedText() : _buildSaveButton();
  }

  Widget _buildSaveButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isSaved = true;
        });
      },
      child: Text('Save'),
    );
  }

  Widget _buildSavedText() {
    return Text(
      'Saved!',
      style: TextStyle(fontSize: 20),
    );
  }
}
