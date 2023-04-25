//
//  ViewController inf4.swift
//  facuamigas
//
//  Created by CEDAM04 on 24/04/23.
//

import UIKit

class ViewController_inf4: UIViewController {
    var imagen_alerta = ["im1","im2","im3","im4","im1","im2"]
    var indice_alerta = 0
    
    var arreglo = ["........","---------","22222","3333","34","55555"]
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
