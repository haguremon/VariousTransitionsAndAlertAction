//
//  ViewController2.swift
//  VariousTransitionsAndActionSheets
//
//  Created by IwasakIYuta on 2021/06/28.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func dialogButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "message", message: "\(textField.text ?? "")を送信しますか？", preferredStyle: UIAlertController.Style.alert)
        let cancel = UIAlertAction(title: "cancel", style: .cancel) //{ (alert) in
//            self.dismiss(animated: true, completion: nil)
//        }//dismissはあった方がいいのかな？
        alert.addAction(cancel)
        let ok = UIAlertAction(title: "ok", style: .default) { (alert) in
            let queue = DispatchQueue.main
            queue.asyncAfter(deadline: .now() + 1) {
                let item2TabC = self.storyboard?.instantiateViewController(identifier: "item2") as! TabBarItem2ViewController
                item2TabC.vc2TextField = self.textField.text ?? ""
                self.present(item2TabC, animated: true, completion: nil)
            }
            
        }
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    

}
