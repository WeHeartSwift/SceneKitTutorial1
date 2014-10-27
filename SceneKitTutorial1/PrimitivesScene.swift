//
//  PrimitivesScene.swift
//  SceneKitTutorial1
//
//  Created by Silviu Pop on 10/23/14.
//  Copyright (c) 2014 We Heart Swift. All rights reserved.
//

import UIKit
import SceneKit

class PrimitivesScene: SCNScene {
    
    var cameraNode: SCNNode?
    
    override init() {
        super.init()
        
        let sphereGeometry = SCNSphere(radius: 1.0)
        sphereGeometry.firstMaterial?.diffuse.contents = UIColor.orangeColor()
        let sphereNode = SCNNode(geometry: sphereGeometry)
        self.rootNode.addChildNode(sphereNode)
        
        let secondSphereGeometry = SCNSphere(radius: 0.5)
        secondSphereGeometry.firstMaterial?.diffuse.contents = UIColor.purpleColor()
        let secondSphereNode = SCNNode(geometry: secondSphereGeometry)
        secondSphereNode.position = SCNVector3(x: 3.0, y: 0.0, z: 0.0)
        self.rootNode.addChildNode(secondSphereNode)
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
