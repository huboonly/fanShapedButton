//
//  shanxingButton.swift
//  shanxingTapDemo
//
//  Created by sidetang on 2018/2/24.
//  Copyright © 2018年 sidetang. All rights reserved.
//

import UIKit

class shanxingButton: UIControl {
    private var shapeLayer: CAShapeLayer? = nil
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let upPoint = CGPoint(x: self.bounds.midX, y: self.bounds.minY - 20)
        let bottomPoint = CGPoint(x: self.bounds.midX, y: self.bounds.maxY)
        let startPoint = CGPoint(x: self.bounds.minX, y: self.bounds.midY)
        let endPoint = CGPoint(x: self.bounds.maxX, y: self.bounds.midY)
        let path = UIBezierPath()
        path.move(to: startPoint)
        path.addQuadCurve(to: endPoint, controlPoint: upPoint)
        path.addLine(to: bottomPoint)
        path.addLine(to: startPoint)
        
        shapeLayer = CAShapeLayer()
        shapeLayer?.strokeColor = UIColor.red.cgColor
        shapeLayer?.fillColor = UIColor.blue.cgColor
        shapeLayer?.path = path.cgPath
        self.layer.addSublayer(shapeLayer!)
        
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let layerPoint = self.layer.convert(point, to: shapeLayer)
        let bezeiPath = UIBezierPath(cgPath: (shapeLayer?.path)!)
        if (bezeiPath.contains(layerPoint)) {
            return true
        }
        else {
            return false
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
