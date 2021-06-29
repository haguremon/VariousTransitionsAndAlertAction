//
//  TabBarItem3ViewController.swift
//  VariousTransitionsAndActionSheets
//
//  Created by IwasakIYuta on 2021/06/28.
//

import UIKit

class TabBarItem3ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var text2Field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func displayButton(_ sender: UIButton) {
        if let text1 = textField.text,
           let text2 = text2Field.text {
            
            label.text = text1 + text2
            
        } else {
        label.text = textField.text
        label.text = text2Field.text
        
        }
        //ボタンを押した時にキーボードを閉じる
        //違い確認　ユーザーが使いやすくしよう！
        textField.resignFirstResponder()//○
        //text2Field.resignFirstResponder()//❌
        
    }
    //画面がタッチされた時に閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}
