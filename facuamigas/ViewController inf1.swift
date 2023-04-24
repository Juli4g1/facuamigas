//
//  ViewController inf1.swift
//  facuamigas
//
//  Created by CEDAM04 on 24/04/23.
//

import UIKit

class ViewController_inf1: UIViewController {
    var imagen_alerta = ["alerta1","alerta2"]
    var indice_alerta = 0
    
    var arreglo = ["Si quieres colocarte, llevar el control u obtener más k formación de los métodos anticonceptivos tenemos dos opciones para ti, está el sector público donde puedes asistir a medicina preventiva, como lo es IMSS, ISSSTE, Hospital de la mujer o ISSEMyM","Tenemos el sector privado ronde tenemos clínicas como reina madre con sedes en CDMX y Toluca Centro médico mujer  con sedes en CDMX Hospital Ángeles CDMX"]
    
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
