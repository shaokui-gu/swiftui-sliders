import SwiftUI

public struct RangeSliderStyleConfiguration {
    public let range: Binding<ClosedRange<CGFloat>>
    public let bounds: ClosedRange<CGFloat>
    public let step: CGFloat
    public let minSpacing:CGFloat
    public let onEditingChanged: (Bool) -> Void
    public var dragOffset: Binding<CGFloat?>
    
    public init(range:  Binding<ClosedRange<CGFloat>>, bounds: ClosedRange<CGFloat>, step: CGFloat, minSpacing:CGFloat, onEditingChanged: @escaping (Bool) -> Void, dragOffset: Binding<CGFloat?>) {
        self.range = range
        self.bounds = bounds
        self.step = step
        self.minSpacing = minSpacing
        self.onEditingChanged = onEditingChanged
        self.dragOffset = dragOffset
    }
    
    func with(dragOffset: Binding<CGFloat?>) -> Self {
        var mutSelf = self
        mutSelf.dragOffset = dragOffset
        return mutSelf
    }
}
