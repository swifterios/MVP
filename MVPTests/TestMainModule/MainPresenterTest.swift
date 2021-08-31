//
//  MainPresenterTest.swift
//  MVPTests
//
//  Created by Владислав on 31.08.2021.
//

import XCTest
@testable import MVP

class MockView: MainViewProtocol {
    var titleTest: String?
    func setGreeting(greeting: String) {
        self.titleTest = greeting
    }
}

class MainPresenterTest: XCTestCase {

    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!
    
    
    override func setUpWithError() throws {
        view = MockView()
        person = Person(firstName: "Baz", lastName: "Bar")
        presenter = MainPresenter(view: view, person: person)
    }

    override func tearDownWithError() throws {
        view = nil
        person = nil
        presenter = nil
    }
    
    func testModuleIsNotNil() {
        XCTAssertNotNil(view, "View is not nil")
        XCTAssertNotNil(person, "Person is not nil")
        XCTAssertNotNil(presenter, "Presenter is not nil")
    }
    
    func testGreeting() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "Baz Bar")
    }
    
    func testPersonModel() {
        XCTAssertEqual(person.firstName, "Baz")
        XCTAssertEqual(person.lastName, "Bar")
    }

}
