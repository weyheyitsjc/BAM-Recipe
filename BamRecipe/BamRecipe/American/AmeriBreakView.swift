//
//  ViewController.swift
//  BamRecipe
//
//  Created by Brandon Ly on 5/3/19.
//

import UIKit
import Firebase
import FirebaseFirestore

class ViewController: UIViewController {
    
    @IBOutlet weak var typeView: UILabel!
    @IBOutlet weak var nameView: UILabel!
    @IBOutlet weak var linkView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let db = Firestore.firestore()
        db.collection("American").whereField("Type", isEqualTo: "Breakfast").whereField("Ingredients", arrayContains: "rasberries")
            .getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    
                    if let name = document.data()["Name"] as? String {
                         if let type = document.data()["Type"] as? String {
                            if let link = document.data()["Link"] as? String {
                                self.typeView.text = type
                                self.nameView.text = name
                                self.linkView.text = link
                            }
                        }
                    }
                }
            }
        }
    }
}




