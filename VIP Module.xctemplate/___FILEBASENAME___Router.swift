//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

class ___VARIABLE_ModuleName___Router {
    
    // MARK: Properties
    weak var view: UIViewController?
    
    // MARK: Static methods
    static func createModule() -> ___VARIABLE_ModuleName___ViewController {
        
        //MARK: Initialise components.
        let viewController = ___VARIABLE_ModuleName___ViewController()
        let presenter = ___VARIABLE_ModuleName___Presenter()
        let interactor = ___VARIABLE_ModuleName___Interactor()
        let router = ___VARIABLE_ModuleName___Router()
        
        //MARK: link VIP components.
        viewController.interactor = interactor
        viewController.router = router
        presenter.viewController = viewController
        interactor.presenter = presenter
        router.view = viewController
        
        return viewController
    }
}

extension ___VARIABLE_ModuleName___Router: ___VARIABLE_ModuleName___RouterProtocol {
    // TODO: Implement Router Methods
}
