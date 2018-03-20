import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName:identifier___Wireframe {
    weak var viewController: UIViewController?

    static func assembleModule() -> UIViewController {
        let view = ___VARIABLE_productName:identifier___VC(nibName: "___VARIABLE_productName:identifier___View", bundle: nil)
        let presenter = ___VARIABLE_productName:identifier___Presenter()
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        let router = ___VARIABLE_productName:identifier___Router()
        // let navigation = UINavigationController(rootViewController: view!)

        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.output = presenter
        router.viewController = view

        return view //or navigation        
    }

    // MARK: Navegations
    // func presentFoobarDetail(forFoobar foobar: Foobar) {
    //     let detailVC = DetailRouter.assembleModule(foobar)
    //     viewController?.navigationController?.pushViewController(detailVC, animated: true)
    // }
}