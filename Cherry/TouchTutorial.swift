//
//  TouchTutorial.swift
//  Cherry
//
//  Created by Luke Farrell on 14/08/2016.
//  Copyright © 2016 AppDev. All rights reserved.
//

import Foundation
import SpriteKit

class TouchTutorial: PopUp {
    var jump_text : TextObject = TextObject(fontNamed: "AvenirNext-Bold");
    var left_text : TextObject = TextObject(fontNamed: "AvenirNext-Bold");
    var right_text : TextObject = TextObject(fontNamed: "AvenirNext-Bold");
    var start_text : TextObject = TextObject(fontNamed: "AvenirNext-Bold");
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size);
        
        let backgroundfaded : ShapeObject = ShapeObject(rect: CGRect(x: 0, y: 0, width: Game.sceneWidth, height: Game.sceneHeight));
        backgroundfaded.fillColor = SKColor.blackColor();
        backgroundfaded.alpha = 0.4;
        backgroundfaded.lineWidth = 0.0;
        backgroundfaded.name = "resume";
        addChild(backgroundfaded);
        
        left_text.setup("Hold here to move left", name: "left", x: Game.GetX(0.18), y: Game.GetY(0.5), size: 45, color: SKColor.whiteColor(), align: SKLabelHorizontalAlignmentMode.Center, zPos: 4);
        
        right_text.setup("Tap middle to jump", name: "right", x: Game.GetX(0.5), y: Game.GetY(0.7), size: 45, color: SKColor.whiteColor(), align: SKLabelHorizontalAlignmentMode.Center, zPos: 4);
        
        jump_text.setup("Hold here to move right", name: "jump", x: Game.GetX(0.82), y: Game.GetY(0.5), size: 45, color: SKColor.whiteColor(), align: SKLabelHorizontalAlignmentMode.Center, zPos: 4);
        
        addChild(left_text);
        addChild(right_text);
        addChild(jump_text);
        
        start_text.setup("tap to start", name: "start", x: Game.GetX(0.5), y: Game.GetY(0.1), size: 45, color: SKColor.whiteColor(), align: SKLabelHorizontalAlignmentMode.Center, zPos: 4);
        
        addChild(start_text);
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}