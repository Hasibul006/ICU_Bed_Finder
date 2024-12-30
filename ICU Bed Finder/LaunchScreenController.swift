//
//  AppDelegate.swift
//  ICU Bed Finder
//
//  Created by Hasibul Islam on 16/11/23.
//

import UIKit
import Firebase

class LaunchScreenController: UIViewController {

    @IBOutlet weak var labela: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1){
            if Auth.auth().currentUser != nil {  
                let vc = self.storyboard?.instantiateViewController(identifier: "Home") as! HomeController
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true)
                
            }
            else{
                let vc = self.storyboard?.instantiateViewController(identifier: "Login") as! LoginController
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true)
            }
            
        }
    }
    
    
}
