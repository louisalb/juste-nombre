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
    var reponse:Int!
    var borneInff:Int!
    var borneSupp:Int!
    var coups:Int = 0
    @IBOutlet weak var borneInf: UILabel!
    @IBOutlet weak var borneSup: UILabel!
    
    var index:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.index == 0 {
            self.borneInff = 1
            self.borneSupp = 100
        }
        if self.index == 1 {
            self.borneInff = 1
            self.borneSupp = 1000
        }
        if self.index == 2 {
            self.borneInff = 1
            self.borneSupp = 10000
        }
        self.borneInf.text = String(self.borneInff)
        self.borneSup.text = String(self.borneSupp)
        self.reponse = Int(arc4random_uniform(UInt32(self.borneSupp)) + 1)
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
        if  nb < reponse && reponse > self.borneInff-1 {
            afficheIndice.text = "plus"
            self.borneInf.text = String(nb)
        }
        if  nb > reponse && reponse < self.borneSupp+1 {
            afficheIndice.text = "moins"
            self.borneSup.text = String(nb)
        }
        if  nb > borneSupp {
            afficheIndice.text = "entrer un nombre inferieur à 101"
        }
        if  nb < borneInff {
            afficheIndice.text = "entrer un nombre superieur à 0"
        }
        if  nb == reponse {
           performSegue(withIdentifier: "segue2", sender: nil)
        }
        self.view.endEditing(true)
        
        self.coups = self.coups+1
        
        
    }
    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
        if segue.identifier == "segue2" {
            if let destinationVC = segue.destination as? ThirdViewController {
                destinationVC.coups = self.coups
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
