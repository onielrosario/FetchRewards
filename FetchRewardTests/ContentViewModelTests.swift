//
//  ContentViewModelTests.swift
//  FetchRewardTests
//
//  Created by Oniel Rosario on 9/22/20.
//  Copyright © 2020 Oniel Rosario. All rights reserved.
//

import XCTest
@testable import FetchReward

class ContentViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_items_displays_onlyNames() {
        let sut = ContentViewModel()
        sut.items.forEach { item in
            XCTAssertTrue(item.name?.isEmpty == false)
        }
    }
}
