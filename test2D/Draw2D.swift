//
//  Draw2D.swift
//  test2D
//
//  Created by Ospite on 26/05/17.
//  Copyright © 2017 Ospite. All rights reserved.
//

import UIKit

class Draw2D : UIView
{
    override func draw(_ rect: CGRect)
    {
        print("Max height: \(rect.size.height)")
        print("Max width: \(rect.size.width)")
        let context = UIGraphicsGetCurrentContext()
        
        context?.setLineWidth(2.0)
        context?.setStrokeColor(UIColor.red.cgColor)
        
        context?.setFillColor(UIColor.red.cgColor)
        context?.fill(rect)
        
        let startPoint:CGPoint = CGPoint(x: 20,y: 30)
        let endPoint:CGPoint = CGPoint(x: 50,y: 60)
        
        context?.move(to: CGPoint(x:50,y:50))
        context?.addLine(to: CGPoint(x:50,y:300))
        context?.addLine(to: CGPoint(x:300,y:300))
        context?.addLine(to: CGPoint(x:300,y:50))
        context?.addLine(to: CGPoint(x:50,y:50))
        
        context?.setFillColor(UIColor.green.cgColor)
        context?.fillPath()
        
        context?.setStrokeColor(UIColor.red.cgColor)
        context?.move(to: CGPoint(x:50,y:50))
        context?.addLine(to: CGPoint(x:50,y:300))
        context?.addLine(to: CGPoint(x:300,y:300))
        context?.addLine(to: CGPoint(x:300,y:50))
        context?.addLine(to: CGPoint(x:50,y:50))
        
        context?.addArc(tangent1End: CGPoint(x:350, y:350), tangent2End: CGPoint(x: 350, y: 500), radius: CGFloat(100))
        
        /*
        context?.move(to: CGPoint(x:150,y:150))
        context?.setStrokeColor(UIColor.blue.cgColor)
        context?.addRect(CGRect(x: 150,y:150, width: 50, height: 100))
        context?.addEllipse(in: CGRect(x: 150,y:150, width: 50, height: 100))
        */
        context?.strokePath()
        
        
    }


}
