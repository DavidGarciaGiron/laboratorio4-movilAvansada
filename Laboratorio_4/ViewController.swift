//
//  ViewController.swift
//  Laboratorio_4
//
//  Created by David Adolfo Garcia Giron on 22/03/19.
//  Copyright © 2019 Tecsup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override var prefersStatusBarHidden:Bool {
        return true;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)));
        
        leftSwipe.direction=UISwipeGestureRecognizerDirection.left
        
        self.view.addGestureRecognizer(leftSwipe);
        // -------------------------------------------------------------
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)));
        
        rightSwipe.direction=UISwipeGestureRecognizerDirection.left
        
        self.view.addGestureRecognizer(rightSwipe);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIViewController {
    @objc func swipeAction(swipe:UISwipeGestureRecognizer){
    switch swipe.direction.rawValue{
    case 1:
    performSegue(withIdentifier:"goLeft", sender:self);
    case 2:
    performSegue(withIdentifier:"goRight", sender:self);
    default:
    break
    }
    }
}

