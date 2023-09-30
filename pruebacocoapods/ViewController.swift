//
//  ViewController.swift
//  pruebacocoapods
//
//  Created by Rodolfo on 29/09/23.
//

import UIKit
import Toaster
import DropDown

class ViewController: UIViewController {
    let dropDown = DropDown()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        dropDown.dataSource = ["Car", "Motorcycle", "Truck"]
    }

    @IBAction func mostrarToast(_ sender: Any) {
        let toast = Toast(text: "Hello")
        toast.show()
        
    }
    
    @IBAction func btnDropDown(_ sender: UIButton) {
        dropDown.anchorView = sender
                dropDown.bottomOffset =  CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
                dropDown.show()
                
                dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
                    sender.setTitle(item, for: .normal)
                }
    }
}

