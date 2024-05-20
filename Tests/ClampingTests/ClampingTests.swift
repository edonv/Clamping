import XCTest
@testable import Clamping

final class ClampingTests: XCTestCase {
    
    let closedRange = -12...25
    let partialRangeFrom = (-34)...
    let partialRangeThrough = ...25
    
    func testClosedRange() throws {
        let testValues = [-50, -13, -12, -3, 0, 3, 25, 26, 50]
        let resultValues = [-12, -12, -12, -3, 0, 3, 25, 25, 25]
        
        for (test, result) in zip(testValues, resultValues) {
            XCTAssert(closedRange.clamp(test) == result, "\(closedRange) clamping \(test) did not equal expected result: \(result).")
            XCTAssert(test.clamped(to: closedRange) == result, "\(test) clamped to \(closedRange) did not equal expected result: \(result).")
        }
    }
    
    func testPartialRangeFrom() throws {
        let testValues = [-50, -35, -34, -3, 0, 3, 25, 26, 50]
        let resultValues = [-34, -34, -34, -3, 0, 3, 25, 26, 50]
        
        for (test, result) in zip(testValues, resultValues) {
            XCTAssert(partialRangeFrom.clamp(test) == result, "\(partialRangeFrom) clamping \(test) did not equal expected result: \(result).")
            XCTAssert(test.clamped(to: partialRangeFrom) == result, "\(test) clamped to \(partialRangeFrom) did not equal expected result: \(result).")
        }
    }
    
    func testPartialRangeThrough() throws {
        let testValues = [-50, -35, -34, -3, 0, 3, 25, 26, 50]
        let resultValues = [-50, -35, -34, -3, 0, 3, 25, 25, 25]
        
        for (test, result) in zip(testValues, resultValues) {
            XCTAssert(partialRangeThrough.clamp(test) == result, "\(partialRangeThrough) clamping \(test) did not equal expected result: \(result).")
            XCTAssert(test.clamped(to: partialRangeThrough) == result, "\(test) clamped to \(partialRangeThrough) did not equal expected result: \(result).")
        }
    }
}
