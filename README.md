# VIP Template
Xcode File Template for generating VIP modules: View, Interactor, Presenter, and Router. Written in Swift 5

# How To Install
1. Clone the repository
2. Navigate to Xcode Templates folder: ```~/Library/Developer/Xcode/Templates/```. If Templates folder doesn't exist, create it
3. Copy and paste the VIP Module.xctemplate in Templates folder

# Use
1. Open Xcode
2. ```File -> New -> File``` or ```⌘ N```
3. Scroll down till you see ```VIP Module``` template and choose it.
4. Set a name for your module. Examples: ```Home, Auth, SignIn```

# Generated Code

Let's suppose we wanted to create the Home module. Here's how it would look:

### Contract
```HomeContract.swift```
```swift
import Foundation

// MARK: View Protocol
protocol HomeViewProtocol: class {

}

// MARK: Interactor Protocol
protocol HomeInteractorProtocol {

}

// MARK: Presenter Protocol
protocol HomePresenterProtocol {

}

// MARK: Router Protocol
protocol HomeRouterProtocol {
    
}
```

### View
```HomeViewController.swift```
```swift
import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Properties
    var interactor: HomeInteractorProtocol?
    var router: HomeRouterProtocol?
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController: HomeViewProtocol{
    // TODO: Implement View Output Methods
}
```

### Interactor
```HomeInteractor.swift```
```swift
import Foundation

class HomeInteractor {

    // MARK: Properties
    var presenter: HomePresenterProtocol?
}

extension HomeInteractor: HomeInteractorProtocol {
    // TODO: Implement Interactor Methods
}
```

### Presenter
```HomePresenter.swift```

```swift
import Foundation

class HomePresenter {

    // MARK: Properties
    weak var viewController: HomeViewProtocol?
}

extension HomePresenter: HomePresenterProtocol {
    // TODO: Implement Presenter Methods
}
```

### Router
```AuthRouter.swift```
```swift
import Foundation
import UIKit

class HomeRouter {
    
    // MARK: Properties
    weak var view: UIViewController?
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        //MARK: Initialise components.
        let viewController = HomeViewController()
        let presenter = HomePresenter()
        let interactor = HomeInteractor()
        let router = HomeRouter()
        
        //MARK: link VIP components.
        viewController.interactor = interactor
        viewController.router = router
        presenter.viewController = viewController
        interactor.presenter = presenter
        router.view = viewController
        
        return viewController
    }
}

extension HomeRouter: HomeRouterProtocol {
    // TODO: Implement Router Methods
}
```
