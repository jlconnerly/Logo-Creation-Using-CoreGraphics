//
//  LambdaLogo.swift
//  Core Graphics Logo
//
//  Created by Jake Connerly on 8/15/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

class LambdaLogoView: UIView {
    
    // MARK: - Properties
    
    private let lambdaRed = UIColor(red: 156/255, green: 27/255, blue: 29/255, alpha: 1)
    private let lineWidth: CGFloat = 15.0
    
    // MARK: - View LifeCycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = lambdaRed
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = lambdaRed
    }
    
    // MARK: - Draw Function
    
    override func draw(_ rect: CGRect) {
        /// Note: elements are drawn on the the screen from back to front
        /// in the order they appear below.
        
        let viewCenter = CGPoint(x: rect.size.width / 2, y: rect.size.height / 2)
        let logoBottomPoint = CGPoint(x: viewCenter.x, y: viewCenter.y + 80)
        let lambdaTopPoint = CGPoint(x: viewCenter.x, y: viewCenter.y - 60)
        let lambdaLeftPoint = CGPoint(x: viewCenter.x - 45, y: viewCenter.y + 10)
        let lambdaRightPoint = CGPoint(x: viewCenter.x + 45, y: viewCenter.y + 10)
        
        if let context = UIGraphicsGetCurrentContext() {
            
            // outer layer of logo
            context.beginPath()
            context.setLineWidth(lineWidth)
            context.setStrokeColor(UIColor.white.cgColor)
            context.move(to: CGPoint(x: viewCenter.x - 70, y: viewCenter.y))
            context.addLine(to: CGPoint(x: viewCenter.x - 70, y: viewCenter.y - 80))
            context.addLine(to: CGPoint(x: viewCenter.x + 70, y: viewCenter.y - 80))
            context.addLine(to: CGPoint(x: viewCenter.x + 70, y: viewCenter.y + 20))
            context.addLine(to: logoBottomPoint)
            context.addLine(to: CGPoint(x: viewCenter.x - 70, y: viewCenter.y + 20))
            context.closePath()
            context.strokePath()
            
            // raw lambda Icon
            context.beginPath()
            context.setLineWidth(lineWidth)
            context.setStrokeColor(UIColor.white.cgColor)
            context.move(to: lambdaTopPoint)
            context.addLine(to: lambdaLeftPoint)
            context.move(to: lambdaTopPoint)
            context.addLine(to: lambdaRightPoint)
            context.strokePath()
            
            //clean up lambda top point
            context.beginPath()
            context.move(to: CGPoint(x: lambdaTopPoint.x - 6.5, y: lambdaTopPoint.y - 1))
            context.setLineWidth(6)
            context.setStrokeColor(UIColor.white.cgColor)
            context.addLine(to: CGPoint(x: lambdaTopPoint.x + 6.5, y: lambdaTopPoint.y - 1))
            //context.addRect(CGRect(x: lambdaTopPoint.x, y: lambdaTopPoint.y + 4, width: 0.8, height: 0.5))
            context.strokePath()
            
            //clean up lambda left point
            context.beginPath()
            context.move(to: CGPoint(x: lambdaLeftPoint.x + 6, y: lambdaLeftPoint.y + 4))
            context.setLineWidth(10)
            context.setStrokeColor(UIColor.white.cgColor)
            context.addLine(to: CGPoint(x: lambdaLeftPoint.x - 11, y: lambdaLeftPoint.y + 4))
            context.addLine(to: CGPoint(x: lambdaLeftPoint.x - 6, y: lambdaLeftPoint.y - 5))
            context.closePath()
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
           
            context.strokePath()
            
            //clean up lambda right point
            context.beginPath()
            context.move(to: CGPoint(x: lambdaRightPoint.x - 6, y: lambdaRightPoint.y + 4))
            context.setLineWidth(10)
            context.setStrokeColor(UIColor.white.cgColor)
            context.addLine(to: CGPoint(x: lambdaRightPoint.x + 11, y: lambdaRightPoint.y + 4))
            context.addLine(to: CGPoint(x: lambdaRightPoint.x + 6, y: lambdaRightPoint.y - 5))
            context.closePath()
            context.setFillColor(UIColor.white.cgColor)
            context.fillPath()
            
            context.strokePath()
            
        }
    }
}
