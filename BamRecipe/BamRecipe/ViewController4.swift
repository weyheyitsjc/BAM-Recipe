//
//  ViewController4.swift
//  BamRecipe
//
//  Created by Brandon Ly on 5/7/19.
//

import UIKit
import FirebaseFirestore
import Firebase

class ViewController4: UIViewController {

    @IBOutlet weak var typeView4: UILabel!
    @IBOutlet weak var nameView4: UILabel!
    @IBOutlet weak var linkView4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let db = Firestore.firestore()
        db.collection("American").whereField("Type", isEqualTo: "Dinner").getDocuments { (snapshot, error) in
            if error != nil {
                print(error)
            } else {
                for document in (snapshot?.documents)! {
                    
                    if let name = document.data()["Name"] as? String {
                        if let type = document.data()["Type"] as? String {
                            if let link = document.data()["Link"] as? String {
                                self.typeView4.text = type
                                self.nameView4.text = name
                                self.linkView4.text = link
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
