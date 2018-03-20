import UIKit

protocol ___VARIABLE_productName:identifier___View: class {
    var presenter: ___VARIABLE_productName:identifier___Presentation! { get set }
    
    // Methods to communicate Presenter -> View 
    // func showFoobarsData(_ foobars: [Foobar]) { }
    // func showNoFoobarsScreen() { } 
}

protocol ___VARIABLE_productName:identifier___Presentation: class {
    weak var view: ___VARIABLE_productName:identifier___View? { get set }
    var interactor: ___VARIABLE_productName:identifier___UsesCase! { get set }
    var router: ___VARIABLE_productName:identifier___Wireframe! { get set }

    // Methods to react and notify from View -> Presenter
    // func viewDidLoad() { }
    // didSelectFoobar(_ foobar: Foobar) { }
}

protocol ___VARIABLE_productName:identifier___UsesCase: class {
    weak var output: ___VARIABLE_productName:identifier___InteractorOutput! { get set }

    // Methods to communicate Presenter -> Interactor
    // func fetchFoobar() { }
}

protocol ___VARIABLE_productName:identifier___InteractorOutput: class {

    // Methods to communicate Interactor -> Presenter
    // func foobarsFetched(_ foobars: [Foobar]) { }
    // func foobarsFetchedFailed() { }
}

protocol ___VARIABLE_productName:identifier___Wireframe: class {
    weak var viewController: UIViewController? { get set }

    // Methods to communicate Presenter -> Router
    //func presentFoobarDetail(forFoobar foobar: Foobar) { }

    static func assembleModule() -> UIViewController
}