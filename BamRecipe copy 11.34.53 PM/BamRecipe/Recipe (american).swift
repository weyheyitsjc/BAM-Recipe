//
//  Recipe (american).swift
//  BamRecipe
//
//  Created by School on 5/12/19.
//

import UIKit
import Firebase
import FirebaseFirestore

class Recipe__american_: UIViewController {
    
    @IBOutlet weak var typeView: UILabel!
    @IBOutlet weak var nameView: UILabel!
    @IBOutlet weak var linkView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        // Do any additional setup after loading the view.
    
    @IBAction func findBreakfast(_ sender: Any) {
        let db = Firestore.firestore()
        db.collection("American").whereField("Type", isEqualTo: "Breakfast").getDocuments { (snapshot, error) in
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
    
    @IBAction func findBrunch(_ sender: Any) {
        let db = Firestore.firestore()
        db.collection("American").whereField("Type", isEqualTo: "Brunch").getDocuments { (snapshot, error) in
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
    
    @IBAction func findLunch(_ sender: Any) {
        let db = Firestore.firestore()
        db.collection("American").whereField("Type", isEqualTo: "Lunch").getDocuments { (snapshot, error) in
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
    
    @IBAction func findDinner(_ sender: Any) {
        let db = Firestore.firestore()
        db.collection("American").whereField("Type", isEqualTo: "Dinner").getDocuments { (snapshot, error) in
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
    
    @IBAction func findDessert(_ sender: Any) {
        let db = Firestore.firestore()
        db.collection("American").whereField("Type", isEqualTo: "Dessert").getDocuments { (snapshot, error) in
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
