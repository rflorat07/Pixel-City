//
//  PopVC.swift
//  PixelCity
//
//  Created by Roger Florat on 19/01/18.
//  Copyright © 2018 Roger Florat. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    // Outlet
    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage){
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popImageView.image = passedImage
        
        addDoubleTap()
    }
    
    func addDoubleTap(){
        
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }


}
