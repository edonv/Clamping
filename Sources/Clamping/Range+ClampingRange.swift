//
//  Range+ClampableRange.swift
//
//
//  Created by Edon Valdman on 5/20/24.
//

import Foundation

extension ClosedRange: ClampableRange {
    public func clamp(_ value: Bound) -> Bound {
        Swift.min(Swift.max(self.lowerBound, value), self.upperBound)
    }
}

extension PartialRangeFrom: ClampableRange {
    public func clamp(_ value: Bound) -> Bound {
        Swift.max(self.lowerBound, value)
    }
}

extension PartialRangeThrough: ClampableRange {
    public func clamp(_ value: Bound) -> Bound {
        Swift.min(self.upperBound, value)
    }
}

extension PartialRangeUpTo: ClampableRange {
    public func clamp(_ value: Bound) -> Bound {
        Swift.min(self.upperBound, value)
    }
}

extension Range: ClampableRange {
    public func clamp(_ value: Bound) -> Bound {
        Swift.min(Swift.max(self.lowerBound, value), self.upperBound)
    }
}
