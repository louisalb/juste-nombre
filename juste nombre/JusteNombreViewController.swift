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
    let reponse:Int = Int(arc4random_uniform(100) + 1)
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        let nb :Int = Int(textField.text!)!
        if  nb < reponse && reponse > 0 {
            afficheIndice.text = "plus"
        }
        if  nb > reponse && reponse < 101 {
            afficheIndice.text = "moins"
        }
        if  nb > 100 {
            afficheIndice.text = "entrer un nombre inferieur à 101"
        }
        if  nb < 1 {
            afficheIndice.text = "entrer un nombre superieur à 0"
        }
        if  nb == reponse {
            afficheIndice.text = "gagné"
        }
        self.view.endEditing(true)
        
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
