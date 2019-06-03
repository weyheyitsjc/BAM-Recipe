//
//  ViewControllerWeb4.swift
//  BamRecipe
//
//  Created by Brandon Ly on 5/15/19.
//

import UIKit
import WebKit
class ViewControllerWeb4: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let recipe = URL(string: "http://www.midwestliving.com/recipe/casseroles/herbed-egg-potato-bake")
        let request = URLRequest(url: recipe!)
        
        webView.load(request)
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
