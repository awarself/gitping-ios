import SwiftUI

struct ImageViewBasedOnTheme: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var widthHeight: CGFloat
    var imageForLightTheme: String
    var imageForDarkTheme: String
    var body: some View {
        Image(colorScheme == .dark ? imageForDarkTheme : imageForLightTheme)
            .resizable()
            .frame(width: widthHeight, height: widthHeight)
    }
}

#Preview {
    ImageViewBasedOnTheme(widthHeight: 180,
                          imageForLightTheme: "gitping_text_black",
                          imageForDarkTheme: "gitping_text"
    )
}

