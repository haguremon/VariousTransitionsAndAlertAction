//
//  ViewController.swift
//  VariousTransitionsAndActionSheets
//
//  Created by IwasakIYuta on 2021/06/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//名前クソなゲー笑
    @IBAction func actionSheetDisplayButton(_ sender: UIButton) {
    //actionsheetの作成
        let actionsheet = UIAlertController(
        title: "A or B",
        message: "どちらを選択しますか？",
        preferredStyle: .actionSheet)//アラートのスタイル
        //AのActionを選択肢
        let actionA = UIAlertAction(
            title: "A",
            style: .default,
            handler: nil)
        actionsheet.addAction(actionA)//actionsheetにactionAを追加
        let actionB = UIAlertAction(
            title: "B",
            style: .default,
            handler: nil)
        actionsheet.addAction(actionB)//以下同文
        let cancel = UIAlertAction(
            title: "cancel",
            style: .cancel, //キャンセルのボタンになる
            handler: nil)
        actionsheet.addAction(cancel)//以下同文
        present(actionsheet, animated: true, completion: nil)
    
    }
    
    //TapGestureRecognizerを使って遷移させてみた7/5 14:55
    //user インタラクションにチェックを入れる必要がある
    @IBAction func tapRecognizer(_ sender: UITapGestureRecognizer) {
        self.performSegue(withIdentifier: "toVC3", sender: nil)
    }
    

}

