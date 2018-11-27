//
//  JusteNombreViewController.swift
//  juste nombre
//
//  Created by ALBERT Louis on 27/11/2018.
//  Copyright © 2018 ALBERT Louis. All rights reserved.
//

import UIKit

class JusteNombreViewController: UIViewController {

    
    @IBOutlet weak var valider: UIButton!
    @IBOutlet weak var afficheIndice: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        actionValider(valider)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func actionValider(_ sender: UIButton) {
        calcul()
    }
    func calcul() {
        let reponse = Int(arc4random_uniform(100) + 1)
        let nb :Int = Int(textField.text!)!
        if  nb < reponse && reponse > 0 {
            afficheIndice.text = "plus"
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
