//
//  ViewController cuestionario1.swift
//  facuamigas
//
//  Created by CEDAM04 on 24/04/23.
//

import UIKit

class ViewController_cuestionario1: UIViewController {
    
    
    var imagen_alerta = ["alerta1","alerta2"]
    var puntos=0
    var indice_alerta = 0
    
    @IBOutlet var pre1: UISwitch!
    
    @IBOutlet var pre2: UISwitch!
    
    @IBOutlet var pre3: UISwitch!
    
    @IBOutlet var pre4: UISwitch!
    
    @IBOutlet var pre5: UISwitch!
    
    
    
    
    @IBAction func on_pre1(_ sender: Any) {
        if pre1.isOn{
            puntos += 1
            
        }
    }
    
    @IBAction func on_pre2(_ sender: Any) {
        if pre2.isOn{
            puntos += 1
        }
    }
    
    @IBAction func on_pre3(_ sender: Any) {
        if pre3.isOn{
            puntos += 1
        }
        
    }
    
    
    @IBAction func on_pre4(_ sender: Any) {
        if pre4.isOn{
            puntos += 1
            
        }
    }
    
    
    @IBAction func on_pre5(_ sender: Any) {
        if pre5.isOn{
            puntos += 1
        }
    }
    
    
    
    @IBOutlet var alerta: UIImageView!
    
    
    @IBAction func terminaq(_ sender: Any) {
        if(puntos<=2){
            indice_alerta=0
            
        }
        else{
            if(puntos>2 && puntos<5){
                indice_alerta=1
            }
            else{
                indice_alerta=2
            }
        }
        actualiza()
        
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actualiza()
        pre1.isOn=false
        pre2.isOn=false
        pre3.isOn=false
        pre4.isOn=false
        pre5.isOn=false
    }
    
    func actualiza(){
        let numeroelemento = imagen_alerta[indice_alerta]
        let La_imagen = UIImage(named:numeroelemento)
        alerta.image = La_imagen
        
    }
    
  
    
}
