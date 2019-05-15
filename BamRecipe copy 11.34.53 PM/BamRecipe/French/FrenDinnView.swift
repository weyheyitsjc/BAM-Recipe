//
//  ViewController14.swift
//  BamRecipe
//
//  Created by Brandon Ly on 5/8/19.
//

import UIKit
import FirebaseFirestore
import Firebase

class ViewController14: UIViewController {

    @IBOutlet weak var typeView14: UILabel!
    @IBOutlet weak var nameView14: UILabel!
    @IBOutlet weak var linkView14: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let db = Firestore.firestore()
        db.collection("French").whereField("Type", isEqualTo: "Dinner").getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    
                    if let name = document.data()["Name"] as? String {
                        if let type = document.data()["Type"] as? String {
                            if let link = document.data()["Link"] as? String {
                                self.typeView14.text = type
                                self.nameView14.text = name
                                self.linkView14.text = link
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
