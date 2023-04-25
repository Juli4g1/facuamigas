//
//  ViewController inf1.swift
//  facuamigas
//
//  Created by CEDAM04 on 24/04/23.
//

import UIKit

class ViewController_inf1: UIViewController {
    var imagen_alerta = ["im1","im2","im3","im4","im1","im2"]
    var indice_alerta = 0
    
    var arreglo = ["Si quieres colocarte, llevar el control u obtener más k formación de los métodos anticonceptivos tenemos dos opciones para ti, está el sector público donde puedes asistir a medicina preventiva, como lo es IMSS, ISSSTE, Hospital de la mujer o ISSEMyM", "Tenemos el sector privado ronde tenemos clínicas como reina madre con sedes en CDMX y Toluca Centro médico mujer  con sedes en CDMX Hospital Ángeles CDMX","Que es? \n Es una funda de látex que se coloca en el pene erecto en cada relación sexual e impide que el semen entre en la vagina, ano o boca.\n ¿Cómo se usa?\n Se coloca cuando el pene está erecto, se aprieta la punta y se desenrolla hasta la base del pene. Se retira después de la eyaculación, antes de que el pene pierda la erección.","Que son?\n Son pastillas de toma diaria hechas a base de hormonas que evitan la ovulación. Existen opciones de 21 o 28 comprimidos.\n ¿Cómo se usan? \n Se tiene que tomar una pastilla cada día en el mismo horario, durante 21 o 28 días. Para empezar a usar este método se debe hacer una consulta previa con un médico y éste indicará cuál es la adecuada para cada mujer.","Es una pequeña pieza de plástico con cobre que impide que los espermatozoides se junten con el óvulo, evitando así el embarazo.\n  ¿Como se usa? \n Se coloca en el interior del útero por un profesional en un consultorio.","Que es? \n Se inserta debajo de la piel del brazo con una una pequeña incisión con anestesia local. La colocación la hace un profesional.\n Como funciona? \n Su efecto dura de 3 a 7 años. La efectividad no depende de sostener un hábito por parte de la mujer. Se controla sólo una o dos veces por año."]
    
    @IBOutlet var imagen: UIImageView!
    
    @IBOutlet var texto: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         indice_alerta = 0
            actualiza()
        }
        
        
    
    
    

    @IBAction func siguiente(_ sender: Any) {
        indice_alerta += 1
        
        if(indice_alerta >= arreglo.count){
            indice_alerta = 0
        }
        actualiza()
    }
    
    func actualiza(){
        let numeroelemento = imagen_alerta[indice_alerta]
        let numeroelemento2 = arreglo[indice_alerta]
        
        let La_imagen = UIImage(named:numeroelemento)
      
        imagen.image = La_imagen
        texto.text = numeroelemento2
    }

}
