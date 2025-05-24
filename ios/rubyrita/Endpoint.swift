import Foundation

enum Endpoint {
    static var rootURL: URL {
       return URL(string: "https://rubyrita.lavenda.com.br")!
    }

    static var pathConfigurationURL: URL {
        rootURL.appending(path: "config/ios.json")
    }
}
