import SwiftUI

struct ButtonView: View {
    
    var title: String
    var iconForLightTheme: String?
    var iconForDarkTheme: String?
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack{
            if (iconForDarkTheme != nil && iconForLightTheme != nil) {
                ImageViewBasedOnTheme(widthHeight: 30, imageForLightTheme: iconForLightTheme!, imageForDarkTheme: iconForDarkTheme!)
                Spacer()
            }
            Text(title)
             
        }
        .padding()
        .frame(width: 280, height: 50)
        .background(colorScheme == .dark ? .white : .black).cornerRadius(10)
        .foregroundColor(colorScheme == .dark ? .black : .white)
        .font(.system(size:22, weight: .medium))
      
    }
}

#Preview {
    ButtonView(title: "Sign in with GitHub",
               iconForLightTheme: "github-mark-white",
               iconForDarkTheme: "github-mark"
    )
}
