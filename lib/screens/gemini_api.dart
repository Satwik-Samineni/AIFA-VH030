import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> fetchChatbotResponse(String message) async {
  String apiKey =
      'AIzaSyBqHXHIHzCCuoimQzQ289K9fzloawnmHwQ'; // Replace with your actual API key
  String apiUrl = 'https://api.gemini.com/chatbot';

  try {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: json.encode({'message': message}),
    );

    if (response.statusCode == 200) {
      // Parse and return the response data
      Map<String, dynamic> responseData = json.decode(response.body);
      return responseData['reply'];
    } else {
      // Handle API error
      print('API request failed with status code: ${response.statusCode}');
      return 'Failed to fetch response';
    }
  } catch (error) {
    // Handle HTTP request error
    print('Error: $error');
    return 'Error occurred';
  }
}
