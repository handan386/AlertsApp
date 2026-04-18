//
//  ViewController.swift
//  AlertProject
//
//  Created by Handan on 17.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func signUpClicked(_ sender: Any) {
      /*
        let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print ("button clicked") // ok button oluşturma sebebimiz sayfada error aldıktan sonra geri gidemiyoruz sayfadan çıkamıyoruz
        }
        alert.addAction(okButton) //butonu içeri gömdük
        
        
        self.present (alert, animated: true, completion: nil) //view kontrole bana birşey göster diyorum */
        
        if usernameText.text == "" {
            
           // let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
           // let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
         //   alert.addAction(okButton)
          //  self.present (alert, animated: true, completion: nil)
            
            makeAlert (titleInput: "Error!",messageInput: "Username not found!")
        }
        else if passwordText.text == "" { 
            //let alert = UIAlertController(title: "Error!", message: "Password not found!", preferredStyle: UIAlertController.Style.alert)
            //let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            //alert.addAction(okButton)
           // self.present (alert, animated: true, completion: nil)
            
            makeAlert (titleInput: "Error!",messageInput: "Password not found!")
            
        }
        else if passwordText.text != password2Text.text {
            //let alert = UIAlertController(title: "Error!", message: "Password do not match!", preferredStyle: UIAlertController.Style.alert)
            //let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
         //   alert.addAction(okButton)
         //   self.present (alert, animated: true, completion: nil)
            
            makeAlert (titleInput: "Error!",messageInput: "Password do not match!")
        }
        
        
        // let alert = UIAlertController(title: "Success!", message: "User Ok!", preferredStyle: UIAlertController.Style.alert)
            //let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
          //  alert.addAction(okButton)
          //  self.present (alert, animated: true, completion: nil) //
            
        else{
            makeAlert (titleInput: "Success!",messageInput: "User Ok") //fonskiyonlu hali
            
        }
        
        }
    
    func makeAlert(titleInput: String, messageInput: String) {
        
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present (alert, animated: true, completion: nil)
    }
    
    
        
    }
    


