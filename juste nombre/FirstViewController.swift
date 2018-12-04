//
//  FirstViewController.swift
//  juste nombre
//
//  Created by ALBERT Louis on 04/12/2018.
//  Copyright © 2018 ALBERT Louis. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func aaaaaa(_ sender: UISegmentedControl) {
        self.index = sender.selectedSegmentIndex
    }
    @IBOutlet weak var niveau: UISegmentedControl!
    var index:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func actionNiveau(_ sender: UISegmentedControl){
        
    }
    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
        if segue.identifier == "segue1" {
            if let destinationVC = segue.destination as? JusteNombreViewController {
                destinationVC.index = self.index
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
