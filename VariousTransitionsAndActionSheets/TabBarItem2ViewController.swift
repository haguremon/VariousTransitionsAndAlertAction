//
//  TabBarItem2ViewController.swift
//  VariousTransitionsAndActionSheets
//
//  Created by IwasakIYuta on 2021/06/28.
//

import UIKit

class TabBarItem2ViewController: UIViewController {
 
    var vc2TextField = ""
    
    @IBOutlet weak var vc2ValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vc2ValueLabel.text = vc2TextField
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
