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
    
    @IBInspectable var shadowColor: UIColor? {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0.0 {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0.0, height: 0.0) {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0.0 {
        didSet {
            setupView()
        }
    }
    
    func setupView() {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = shadowOpacity
    }
    
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    

}
