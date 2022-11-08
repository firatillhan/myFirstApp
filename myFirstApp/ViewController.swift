//
//  ViewController.swift
//  myFirstApp
//
//  Created by Fırat İlhan on 6.11.2022.
// fırat

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelText: UILabel!
    
    
    var mesajText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelText.text = ""
    }


    @IBAction func sendBtn(_ sender: Any) { 
        if textField.text == "" {
            let alert = UIAlertController(title: "Uyarı", message: "Mesaj alanı Boş Bırakılamaz.", preferredStyle: UIAlertController.Style.alert)
            let ok = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
           
        } else {
            labelText.text = "Mesajınız: \(textField.text!)"
        }
    }
}

