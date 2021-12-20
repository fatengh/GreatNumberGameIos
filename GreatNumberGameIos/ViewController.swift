//
//  ViewController.swift
//  GreatNumberGameIos
//
//  Created by admin on 20/12/2021.
//

import UIKit

class ViewController: UIViewController {
       
       @IBOutlet weak var numberTextField: UITextField!
       var num : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        num = Int.random(in: 1...100)
        print(num)
       }
    
    @IBAction func submitPressed(_ sender: UIButton) {
        
        
        let x = Int(numberTextField.text ?? "0")
        if x! > num{
            alertincorect("\(x!) is too High")
        }else if x! < num{
            alertincorect("\(x!) is too Low")
        }else{
            alertcorect("\(x!) is Correct")
        }
        numberTextField.text = ""
        
    }

        
        func alertcorect( _ message: String){
                let alertDailog = UIAlertController(title: "correct", message: message, preferredStyle: UIAlertController.Style.alert)
                alertDailog.addAction(UIAlertAction(title: "Play Again", style: UIAlertAction.Style.cancel, handler: { _ in
                    self.num = Int.random(in: 1...100)
                }))
                alertDailog.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor.green
                alertDailog.view.tintColor = UIColor.white
                self.present(alertDailog, animated: true, completion: nil)
            
        }
    
      func  alertincorect( _ message: String){
           let alertDailog = UIAlertController(title: "Incorrect", message: message, preferredStyle: UIAlertController.Style.alert)
           alertDailog.addAction(UIAlertAction(title: "Guess Again", style: UIAlertAction.Style.cancel, handler: { _ in
            }))
          alertDailog.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor.red
        
          self.present(alertDailog, animated: true, completion: nil)
    }
    }
