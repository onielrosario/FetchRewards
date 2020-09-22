//
//  FetchRewardTests.swift
//  FetchRewardTests
//
//  Created by Oniel Rosario on 9/22/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import XCTest
@testable import FetchReward

class FetchRewardTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

  //  testing data with system under test
    func test_data_downloads_successfully() {
        let sut = NetworkLayer()
        let exp = expectation(description: "we got data as expected")
        sut.getItems({ result in
            switch result {
            case .success( let result):
                XCTAssertFalse(result.isEmpty)
                XCTAssertFalse(result.isEmpty)
                exp.fulfill()
            case .failure(_):
                XCTFail("error downloading data")
            }
        })
        wait(for: [exp], timeout: 2.0)
    }
}
