//
//  ViewController3.swift
//  BamRecipe
//
//  Created by Brandon Ly on 5/7/19.
//

import UIKit
import FirebaseFirestore
import Firebase

class ViewController3: UIViewController {
    
    @IBOutlet weak var typeView3: UILabel!
    @IBOutlet weak var nameView3: UILabel!
    @IBOutlet weak var linkView3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let db = Firestore.firestore()
        db.collection("American").whereField("Type", isEqualTo: "Lunch").whereField("Ingredients", arrayContains: "groung beef").getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    
                    if let name = document.data()["Name"] as? String {
                        if let type = document.data()["Type"] as? String {
                            if let link = document.data()["Link"] as? String {
                                self.typeView3.text = type
                                self.nameView3.text = name
                                self.linkView3.text = link
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
}
