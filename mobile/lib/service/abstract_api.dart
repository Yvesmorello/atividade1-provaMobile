import 'package:http/http.dart' as http;

abstract class AbstractApi{

    final String urlLocalhost = 'http://localhost:3000';
    String _recurso;

    AbstractApi(this._recurso);

    Future<String> getAll() async{
        var response = await http.get(Uri.parse('$urlLocalhost/$_recurso'));
        return response.body;
    } 

}