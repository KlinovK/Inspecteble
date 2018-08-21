//
//  RoundedShadowView.swift
//  Inspecteble
//
//  Created by Константин Клинов on 8/21/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedShadowView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    override func prepareForInterfaceBuilder() {
        setUpView()
    }
    
    func setUpView(){
        layer.cornerRadius = cornerRadius
    }

}
