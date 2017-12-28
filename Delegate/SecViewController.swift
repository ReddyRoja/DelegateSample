//
//  SecViewController.swift
//  Delegate
//
//  Created by Dinesh Sunder on 12/21/17.
//  Copyright © 2017 Dinesh Sunder. All rights reserved.
//

import UIKit

class SecViewController: UIViewController{
  var delegate:Notified!
  var object:Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  func notify(_ name: UIColor) {
    self.view.backgroundColor=UIColor.gray
  }
  @IBAction func notify(_ sender: Any) {
    print(object)
    delegate?.notify(UIColor.green)
//    self.navigationController?.popViewController(animated: false)
  }
  
    
}
