//
//  ClampableRange.swift
//
//
//  Created by Edon Valdman on 5/20/24.
//

import Foundation

/// A protocol defining a `RangeExpression` type as being able to "clamp" a value of type `Bound`.
public protocol ClampableRange: RangeExpression {
    /// "Clamps" the provided value to this range's bounds.
    ///
    /// This means it will return `value` only if it is within the bounds of this range. Otherwise, the returned value will be the bound that `value` exceeded.
    /// - Parameter value: The value to clamp.
    /// - Returns: The clamped value.
    func clamp(_ value: Bound) -> Bound
}
