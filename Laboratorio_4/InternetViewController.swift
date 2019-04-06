//
//  InternetViewController.swift
//  Laboratorio_4
//
//  Created by David Adolfo Garcia Giron on 22/03/19.
//  Copyright © 2019 Tecsup. All rights reserved.
//

import UIKit

class InternetViewController: UIViewController {
    
    
    
    override var prefersStatusBarHidden: Bool{
        return true;
    }

    @IBOutlet weak var WebView: UIWebView!
    @IBOutlet weak var WebView2: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url=URL(string: "https://www.facebook.com/")
        
        let requestobj = URLRequest(url:url! as URL)
        
        WebView.loadRequest(requestobj)
        
        let url2=URL(string: "https://twitter.com/?lang=es")
        
        let requestobj2 = URLRequest(url:url2! as URL)

        WebView2.loadRequest(requestobj2)
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backpressed (sender: UIButton){
        dismiss(animated: true, completion: nil)
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
