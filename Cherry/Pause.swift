//
//  Pause.swift
//  Cherry
//
//  Created by Luke Farrell on 13/03/2016.
//  Copyright © 2016 AppDev. All rights reserved.
//

import Foundation
import SpriteKit

class Pause: PopUp {
    var resume_btn : TextObject = TextObject(fontNamed: "AvenirNext-Bold");
    var soundfx_btn : TextObject = TextObject(fontNamed: "AvenirNext-Bold");
    var autoresume_btn : TextObject = TextObject(fontNamed: "AvenirNext-Bold");
    var righthanded_btn : TextObject = TextObject(fontNamed: "AvenirNext-Bold");
    var quit_btn : TextObject = TextObject(fontNamed: "AvenirNext-Bold");
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size);
        
        setupBG();
        
        resume_btn.setup("RESUME", name: "resume", x: Game.GetX(0.5), y: Game.GetY(0.68), size: 65, color: SKColor.whiteColor(), align: SKLabelHorizontalAlignmentMode.Center, zPos: 4);
        soundfx_btn.setup("SOUNDFX ON", name: "soundfx", x: Game.GetX(0.5), y: Game.GetY(0.57), size: 65, color: SKColor.whiteColor(), align: SKLabelHorizontalAlignmentMode.Center, zPos: 4);
        autoresume_btn.setup("AUTOPLAY OFF", name: "autoplay", x: Game.GetX(0.5), y: Game.GetY(0.47), size: 65, color: SKColor.whiteColor(), align: SKLabelHorizontalAlignmentMode.Center, zPos: 4)
        righthanded_btn.setup("RIGHT HANDED", name: "orientation", x: Game.GetX(0.5), y: Game.GetY(0.37), size: 65, color: SKColor.whiteColor(), align: SKLabelHorizontalAlignmentMode.Center, zPos: 4)
        quit_btn.setup("QUIT", name: "quit", x: Game.GetX(0.5), y: Game.GetY(0.26), size: 65, color: SKColor.whiteColor(), align: SKLabelHorizontalAlignmentMode.Center, zPos: 4);
        
        addChild(resume_btn);
        addChild(soundfx_btn);
        addChild(autoresume_btn);
        addChild(righthanded_btn);
        addChild(quit_btn);
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func inView() {        
        if(Game.soundFX){
            soundfx_btn.text = "SOUNDFX ON";
        }else{
            soundfx_btn.text = "SOUNDFX OFF";
        }
        
        if(Game.autoplayON){
            autoresume_btn.text = "AUTOPLAY ON";
        }else{
            autoresume_btn.text = "AUTOPLAY OFF";
        }
        
        if(Game.ability_bar.orientation){
            righthanded_btn.text = "RIGHT HANDED";
        }else{
            righthanded_btn.text = "LEFT HANDED";
        }
    }
}