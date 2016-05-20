import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let configurations = Configurations()
        print(configurations.googleAnalyticsCode)
        print(configurations.serverURL)
    }
}
