//
//  ViewControllerWeb2.swift
//  BamRecipe
//
//  Created by Brandon Ly on 5/14/19.
//

import UIKit
import WebKit

class ViewControllerWeb2: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let recipe = URL(string: "https://www.sweetestmenu.com/fluffy-american-pancakes")
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
