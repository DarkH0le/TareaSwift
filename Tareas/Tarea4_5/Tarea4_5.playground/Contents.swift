//: Playground - noun: a place where people can play
//: Playground - noun: a place where people can play

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
var now = Date()  //MM d, YYYY 'at' hh:mm 'PM'var pastDate = Date(timeIntervalSinceNow: -122 )
// String x = "";// x.reverse()// x.charAt(index)

/*
 Extencion Date
 
 - Funcion getTimeAgo():
    
    * Se agregara la funcion de obtener el tiempo que ha pasado desde el momento dado hasta
      el momento actual (timestamp), mandado un formato de salido dependiendo del tiempo transcurrido:
        - Menos de un minuto: "Segundos transcurridos¨ seconds ago.
        - Menos de una hora: "Minutos transcurridos¨ minutos ago.
        - ... Hasta llegar a meses
        - Llegando al año se mostrara la fecha.
    * Regresara un tipo de valor String, cadena de caracteres con el formato por default 
      "yyyy-MM-dd", Ejemplo: 2018-01-30
    * Dependecias:
        - FormatDate()
 
 -Funtion formatDate():
    
    *   Se agrego la funcion para darle un formato a la fecha segun un String, una cadena de caracteres, que es
        que es un patron como el siguiente ejemplo: "yy-MM-dd" otro ejemplo "EEE, d MMM yyyy HH:mm:ss Z"
    *   Los parametros aceptados son 
 
 
 
 */


extension Date {
    
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
            return "\(self.formatDate(givenFormatPattern: formatPatterForTimeAgo))) , \(timeAgo / 60 / 60 / 24 / 7 / 4) months ago"
        }
        return "Post on \(self.formatDate(givenFormatPattern: formatPatterForTimeAgo))"
    }
    
    
    
    
    
    //Function to format  dates
    func formatDate(givenFormatPattern:String? = nil) -> String {
        //Creation of the dateformmater
        let dateFormatter:DateFormatter = DateFormatter() //La ide me dijo que es let :v
        var formatPattern:String = (givenFormatPattern != nil ? givenFormatPattern! : FORMAT)
        dateFormatter.dateFormat = formatPattern
        //Convetion of the date to string
        let formattedDate:String = dateFormatter.string(from: self)//La ide me dijo que es let :v
        return formattedDate
    }

}

var date = Date().formatDate()
//Tests

//var tiempo = Date(timeIntervalSinceNow: -60*60*24*7*4*11).getTimeAgo(formatPatterForTimeAgo: nil)
//print(tiempo)


//var secondsAgo: String = pastDate.getTimeAgo()
//class Post {}
//class User {}

//var leo = User("Leo", "image", )//var post = Post(leo, "imagen", "texto"))//post.getUser()//post.incrComments()//post.incrComments()//post.getComments() // 2
