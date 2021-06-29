//
//  ViewController2.swift
//  VariousTransitionsAndActionSheets
//
//  Created by IwasakIYuta on 2021/06/28.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func dialogButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "message", message: "messageを送信しますか？", preferredStyle: UIAlertController.Style.alert)
        let cancel = UIAlertAction(title: "cancel", style: .cancel) //{ (alert) in
//            self.dismiss(animated: true, completion: nil)
//        }//dismissはあった方がいいのかな？
        alert.addAction(cancel)
        let ok = UIAlertAction(title: "ok", style: .default) //{ (alert) in
//            self.dismiss(animated: true, completion: nil)
//        }
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    

}
