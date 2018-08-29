//
//  ViewController.swift
//  imagenes
//
//  Created by Maestro on 28/08/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblTexto: UILabel!
    
    
    @IBOutlet weak var imgSecuencia: UIImageView!
    
    @IBAction func doTapPerro(_ sender: Any) {
        lblTexto.text = "Guau"
        if imgSecuencia.isAnimating {
            imgSecuencia.stopAnimating()
            lblTexto.text = "Guau"
        }
        else {
            imgSecuencia.startAnimating()
            lblTexto.text = "Continuar"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgSecuencia.image = UIImage(named: "Carta2_00000")
        
        var imagenes : [UIImage] = []
        imagenes.append(UIImage(named: "Carta2_00000")!)
        imagenes.append(UIImage(named: "Carta2_00001")!)
        imagenes.append(UIImage(named: "Carta2_00002")!)
        imagenes.append(UIImage(named: "Carta2_00003")!)
        imagenes.append(UIImage(named: "Carta2_00004")!)
        imagenes.append(UIImage(named: "Carta2_00005")!)
        imagenes.append(UIImage(named: "Carta2_00006")!)
        imagenes.append(UIImage(named: "Carta2_00007")!)
        
        imgSecuencia.animationImages = imagenes
        
        
        imgSecuencia.animationDuration = 0.2
        imgSecuencia.startAnimating()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

