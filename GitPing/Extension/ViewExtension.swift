import SwiftUI

extension View {
    /// Provides rounded corner to the attached view, provide list of corners
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
