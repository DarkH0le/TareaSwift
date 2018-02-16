import UIKit


//Tema 4,5
//Crear objeto post y sus relaciones
//Completar el código visto en clase
//Subir repositorio a github
//User(imagenDeUsuario)//id -- UUID random// let post = Post(usuario, imagen, texto)
//post.incrementLike()//post.getLikes()
//post.incrementComments()//post.getComments()
//getDate -- Tema 5
//post.setLocation()//post.getLocation()
//post.setImage()//post.getImage() - Optional
//post.getContadores() -> tupla de comments y likes


// 0 = 1970 x = 776457687 timestamp ->
// UTC, GMT
//Format("YYYY/mm/dd:T:HH:MM:SS:mm.000'Z'") - hulu format date
import UIKit
let FORMAT:String = "yyyy-MM-dd"
//var now = Date()  //MM d, YYYY 'at' hh:mm 'PM'var pastDate = Date(timeIntervalSinceNow: -122 )
// String x = "";// x.reverse()// x.charAt(index)

extension Date {
    
   
/*
 Extencion Date
 
 - Funcion getTimeAgo():
 
     * Se agregara la funcion de obtener el tiempo que ha pasado desde el momento dado hasta
       el momento actual (timestamp), mandado un formato de salido dependiendo del tiempo transcurrido:
        - Menos de un minuto: "Segundos transcurridos¨ seconds ago.
        - Menos de una hora: "Minutos transcurridos¨ minutos ago.
        - ... Hasta llegar a meses
        - Llegando al año se mostrara la fecha.
 
     * En caso de no tener parametro de entrada regresara un tipo de valor String que es cadena de caracteres 
       con el formato por default "yyyy-MM-dd", Ejemplo: 2018-01-30
 
     * Variable:
        - givenFormatPattern: referencia a el tipo de formato que se le quiere convertir la fecha
            · yyyy/MM/dd
            · dd-M-yyyy hh:mm:ss
            · dd MMMM yyyy zzzz
            · E, dd MMM yyyy HH:mm:ss z
            · ...
        - dateFormatter: objeto que nos ayuda a convertir las fechas en sus equivalente textual y viceversa
        - formatPattern: variable que contendra el patron final que se le aplicara la fecha, puede ser un patron
          valido o un nil, en caso de que no sea un patron valido
        - formattedDate: Esta contendra la cadena de caracteres final que se le mostrara al usuario como la fecha
 
     * Dependecias:
        - FormatDate()
 */
    func getTimeAgo(formatPatterForTimeAgo:String?) -> String {
        
        let timeAgo = Int(Date().timeIntervalSince(self))
        
        if timeAgo < 60 {
            return "\(timeAgo) seconds ago"
        } else if timeAgo < 60 * 60 {
            return "\(timeAgo / 60) minutes ago"
        } else if timeAgo < 60 * 60 * 24 {
            return "\(timeAgo / 60 / 60) hours ago"
        } else if timeAgo < 60 * 60 * 24 * 7 {
            return "\(timeAgo / 60 / 60 / 24) day ago"
        }
            // week
        else if timeAgo < 60 * 60 * 24 * 7 * 4 {
            return "\(timeAgo / 60 / 60 / 24 / 7) weeks ago"
        }
            //before a month print the format yyyy/mm/dd - extra
        else if timeAgo < 60 * 60 * 24 * 7 * 4 * 12 {
            return "\(self.formatDate(givenFormatPattern: formatPatterForTimeAgo))) ,\(timeAgo / 60 / 60 / 24 / 7 / 4) months ago"
        }
        return "Post on \(self.formatDate(givenFormatPattern: formatPatterForTimeAgo))"
    }
    
    
/* 
 - Funtion formatDate():
 
 *   Se agrego la funcion para darle un formato a la fecha segun un String, una cadena de caracteres, que es
 que es un patron como el siguiente ejemplo: "yy-MM-dd" otro ejemplo "EEE, d MMM yyyy HH:mm:ss Z"
 *   Los parametros aceptados son ninguno o solamente uno de tipo "String", que sera el patron para darle
 formato a el string ejemplo : "yyyy-MM-dd" -> 2018-01-30
 *   Como formato defaul en caso de no ingresar un patron para la fecha es yyyy-MM-dd, asignado a la
 constrante FORMAT
 *   La funcion verifica que el patron ingresado sea un patron valido y en caso de no serlo se manda un
 mensaje de "INVALID DATE PATTERN
 
 
*/
    
    func formatDate(givenFormatPattern:String? = nil) -> String {
        //Creation of the dateformmater
        var dateFormatter:DateFormatter = DateFormatter() //La ide me dijo que es let :v
        var formatPattern:String = (givenFormatPattern != nil ? givenFormatPattern! : FORMAT)
        dateFormatter.dateFormat = formatPattern
        
        //Convetion of the date to string
        var formattedDate:String = dateFormatter.string(from: self)
        //Validetion of the given pattern
        formattedDate = (dateFormatter.date(from: formattedDate) != nil ? formattedDate : "INVALID")

        return formattedDate
    }

}


//Tests

//var tiempo = Date(timeIntervalSinceNow: -60*60*24*7*4*11).getTimeAgo(formatPatterForTimeAgo: nil)
//print(tiempo)


//var secondsAgo: String = pastDate.getTimeAgo()
//class Post {}
class User {
    var nombre:String = String()
    var imagenPath:String = String()
    
    init(givenName:String, givenImagePath:String) {
        self.nombre = givenName
        self.imagenPath = givenImagePath
    }
    func getName() -> String {
        return self.nombre
    }
    func getImagePath() -> String {
        return self.imagenPath
    }
}

class Post {

    var postContent:String
    var user:User!

    init(givenPostcontent:String , user:User) {
        self.postContent = givenPostcontent
        self.user = user
    }
}

var user = User(givenName: "shadow", givenImagePath: "LADVD")
var post = Post(givenPostcontent: "Postchidori", user: user)


post.postContent

var dia = Date().formatDate(givenFormatPattern: "yyyy-MM-dd")

//var date = Date().formatDate(givenFormatPattern: "yyyy-MM-dd")
//var posttry34234:Post = Post(user2: usuario2, givenPostContent: "HOLA K ACE", givenImagePost: "PENDEJASDASD")

//var nuevoPost:Post = Post(usuarop: usuario2, givenPostcontent: "PENDEJADA")
//nuevoPost.postContent

//var leo = User("Leo", "image", )//var post = Post(leo, "imagen", "texto"))//post.getUser()//post.incrComments()//post.incrComments()//post.getComments() // 2
