import 'dart:html'; // extends io
import 'dart:convert';
import 'package:gestion_films/gestion_films.dart' as gestion_films;


const JsonDecoder decoder = JsonDecoder();

// 3. Vous allez prendre le tableau listeFilms du fichier films.js et avec ces données vous allez créer
// une liste d’instances de la classe Film et les mettre dans une liste nommée listeObjsFilm.
// 4. À partir de cette liste listeObjsFilm vous allez afficher dans la console tous les films. Ne pas
// oublier le titre des colonnes.
// 5. Vous allez trier listeObjsFilm par Year en mode décroissant.
// 6. Lister selon le même format qu’au point 3.
// 7. Afficher tous les films compris entre deux années.
// 8. Afficher tous les films d’un réalisateur donné.
// 9. Supprimer un film de listeObjsFilm via le titre de celui-ci et afficher après la liste.


/*
class className {
 fields;
 getters/setters
 constructor
 methods/functions
}
* */

// 2. Créez une classe Film ayant ces attributs.
// Votre classe doit avoir un constructeur, les get et set
// et une méthode pour afficher le contenu d’un objet Film.
class Film {
   String? title;
    String? year;
   String? released,
   String? runtime,
   String? genre,
    String? director;


    @override
    String toString() {
        return "{$title}";
    }
}
}


void main() {
     List<Film>? list;
    //synchronously read file contents
    var jsonString = File(FILEPATH).readAsStringSync();
    //print(jsonString);
    //pass the read string to JsonDecoder class to convert into corresponding Objects 
    final Map<String, dynamic> jsonmap = decoder.convert(jsonString);
    
    //DataModel - key = "users", value = "ARRAY of Objects"
    var value = jsonmap["users"];
    if (value != null) {
      eMP = <USER>[];
      //Each item in value is of type::: _InternalLinkedHashMap<String, dynamic>
      value.forEach((item) => eMP?.add(new USER(id:item["id"],user:item["user"],password:item["password"] )));
    }
    eMP?.forEach((element) => print(element));
}





Future<void> readJson() async {
    final String response = await rootBundle.loadString('sample.json');
    final data = await json.decode(response);
    final users = data['users'];
}





void main(List<String> arguments) {

  print('${}');
}
