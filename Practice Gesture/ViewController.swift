//
//  ViewController.swift
//  Practice Gesture
//
//  Created by Andre Elandra on 11/07/19.
//  Copyright © 2019 Andre Elandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   
    @IBOutlet weak var gestureView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        handleTap()
        
    }
    
    
    @IBAction func handlePanGesture(recognizer: UIPanGestureRecognizer) {
        
        let translation = recognizer.translation(in: self.view)
        
        if let view = recognizer.view {
            
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        
        UIView.animate(withDuration: 2, animations: ({
            
    self.gestureView.layer.cornerRadius = self.gestureView.frame.width/2
            
        }), completion: nil)
        
    }
    
    func handleTap() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        gestureView.addGestureRecognizer(tap)
    }
   
    
    
//    @IBAction func handleTap(recognizer: UITapGestureRecognizer) {
//
//        UIView.animate(withDuration: 1, animations: ({
//
//            self.gestureView.frame = CGRect(x: self.gestureView.frame.origin.x, y: 600, width: self.gestureView.frame.width, height: self.gestureView.frame.height)
//
//        }), completion: nil)
//
//        gestureView.addGestureRecognizer()
//
//    }
    

}


