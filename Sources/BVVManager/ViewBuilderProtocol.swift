//
//  ViewBuilderProtocol.swift
//  
//
//  Created by Senior Developer on 10.09.2022.
//
import UIKit

public protocol ViewBuilderProtocol: AnyObject {
    
    associatedtype V : ViewProtocol
    associatedtype VS: ViewManager<V>
    
    var viewModel: VS { get set }
    var view     : V  { get set }
}
