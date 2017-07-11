//
//  XYViperProtocols.swift
//  XY.architecture.viper
//
//  Created by tdw on 2017/7/7.
//  Copyright © 2017年 tdw. All rights reserved.
//

import UIKit


//// I
//// E
//// D
/// Application Logic -- can tdd

/// Module Interface - This what do in Router binding (Router configure v & p)
//// Interface  --  can do what
//// Delegate   --  do what

///  UserInterface
//// V
//// P
//// R

// Viper Structure
//             R
//             |
//   V   ->    P  -> I   - E
//       <~       <~     - E
//                   |
//                   D
//
//

// Just learning something: 

// in the main method (applicationDidFinish) :
// First config every module  R , P , I 
// Second in R , Config V , P 

// in the main method (applicationDidFinish) :
// config every module VIPER releation in the R
/// Module Interface not just between I & P , Perhaps P & P

// Router owns subrouter
// Router present viewconroller of self (UI) , or push viewcontroller of self (UI)

protocol ViewInterface:class {
    var presenter:PresenterInterface? { get set }
    // P -> V
}

protocol InteractorInterface:class {
    var presenter:PresenterInterface? { get set }
    // P -> I
}

protocol PresenterInterface:class {
    weak var viewer:ViewInterface?  {get set}
    weak var interactor:InteractorInterface? {get set}
    weak var router:RouterInterface? {get set}
    
    // V -> P
    // I -> P
    // R -> P
}

protocol RouterInterface:class {
    var presenter:PresenterInterface?{get set}
    // P -> R
}


protocol EntityInterface {
    
}

class XYViperProtocols: NSObject {

}
