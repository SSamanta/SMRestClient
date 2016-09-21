import XCTest
@testable import SMRestClient

class SMRestClientTests: XCTestCase {
    func testAPICall() {
        let urlString = "http://itunes.apple.com/us/rss/topfreeapplications/limit=100/json"
        let sampleCall : SMRestClient  = SMRestClient(url: urlString , method: "GET", httpBody: nil, headerFieldsAndValues: nil)
        sampleCall.getJsonData { (obj, error) -> Void in
            if error != nil {
                print(error)
            }else {
                print(obj)
            }
        }
    }

    static var allTests : [(String, (SMRestClientTests) -> () throws -> Void)] {
        return [
            ("testAPICall", testAPICall),
        ]
    }
}
