import Foundation

class Configurations {

    var googleAnalyticsCode = ""
    var serverURL = ""

    init() {
        if let dictionary = NSBundle.mainBundle().infoDictionary,
            let configuration = dictionary["Configuration"] as? String {
            let path = NSBundle.mainBundle().pathForResource("Configurations", ofType:"plist")
            let config = NSDictionary(contentsOfFile: path!)
            for (key, value) in config! {
                if let key = key as? String,
                    let value = value as? [String:String] {
                    if key == configuration {
                        serverURL = value["serverURL"] ?? ""
                        googleAnalyticsCode = value["googleAnalyticsCode"] ?? ""
                    }
                }
            }
        }
    }
}
