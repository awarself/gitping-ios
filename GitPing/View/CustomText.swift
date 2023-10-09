import SwiftUI

struct CustomText: View {
    var text: String
    var size: CGFloat = 16
    var color: Color = .black
    var weight: Font.Weight = .regular
    
    var body: some View {
        Text(text).font(.system(size: size, weight: weight)).foregroundColor(color)
    }
    
}

#Preview{
    CustomText(text: "Welcome", color: .color545454, weight: .bold)
}
