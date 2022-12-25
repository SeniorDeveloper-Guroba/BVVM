//
//  BuilderProtocol.swift
//  
//
//  Created by Senior Developer on 10.09.2022.
//
import UIKit

public protocol BuilderProtocol: AnyObject {
    
    associatedtype V : ViewProtocol
    associatedtype VS: ViewManager<V>
    
    var viewModel: VS { get set }
    var view     : V  { get set }
}
