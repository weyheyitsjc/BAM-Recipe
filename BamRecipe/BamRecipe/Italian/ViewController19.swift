//
//  ViewController19.swift
//  BamRecipe
//
//  Created by Brandon Ly on 5/10/19.
//

import UIKit
import FirebaseFirestore
import Firebase

class ViewController19: UIViewController {
    
    @IBOutlet weak var typeView19: UILabel!
    @IBOutlet weak var nameView19: UILabel!
    @IBOutlet weak var linkView19: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let db = Firestore.firestore()
        db.collection("Italian").whereField("Type", isEqualTo: "Dinner").getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    
                    if let name = document.data()["Name"] as? String {
                        if let type = document.data()["Type"] as? String {
                            if let link = document.data()["Link"] as? String {
                                self.typeView19.text = type
                                self.nameView19.text = name
                                self.linkView19.text = link
                            }
                        }
                    }
                }
            }
        }
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

