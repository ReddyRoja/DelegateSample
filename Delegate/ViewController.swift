//
//  ViewController.swift
//  Delegate
//
//  Created by Dinesh Sunder on 12/21/17.
//  Copyright © 2017 Dinesh Sunder. All rights reserved.
//

import UIKit
protocol Notified{
  func notify(_ name:UIColor)
}
class ViewController: UIViewController,Notified{
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    if let destination = segue.destination as? SecViewController{
      destination.delegate = self
      destination.object = 3
    }
  }
  @IBAction func passData(_ sender: Any) {
    performSegue(withIdentifier: "ViewController", sender: self)
  }
  func notify(_ name: UIColor) {
    self.view.backgroundColor=name
  }


}

