//
//  Extension.swift
//  Techelix UI Task
//
//  Created by Sabih Haris on 4/23/23.
//

import UIKit

extension UIViewController {
    
    class func initWithNib<T : UIViewController>() -> T {
        return self.init(nibName: String(describing: self.classForCoder()), bundle: nil) as! T
        
    }
    
}
