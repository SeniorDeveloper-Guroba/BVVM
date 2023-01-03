import Foundation

open class ViewManager<View: ViewProtocol> {

    public var update: Closure<View.ViewProperties?>?
    public var create: Closure<View.ViewProperties?>?

    // MARK: - Привязываем View с ViewModel
    public func bind(with view: View) {
        self.update = view.update(with:)
        self.create = view.create(with:)
    }

    public init(){}
}

//public protocol ViewManager where Self: AnyObject {
//
//    associatedtype View: ViewProtocol
//
//    var update: Closure<View.ViewProperties?>? { get set }
//    var create: Closure<View.ViewProperties?>? { get set }
//
//
//    func bind(with view: View)
//}
//
//public extension ViewManager {
//
//    // MARK: - Привязываем View с ViewModel
//    func bind(with view: View) {
//        self.update = view.update(with:)
//        self.create = view.create(with:)
//    }
//}
//
//public protocol StateManager {
//
//    associatedtype State
//
//    var state: State? { get set }
//
//
//}
//
//extension StateManager {
//
//    func stateManager() {
//        guard let state = self.state else { return }
//    }
//}
