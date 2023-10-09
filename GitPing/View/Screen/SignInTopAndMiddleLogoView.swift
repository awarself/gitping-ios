import SwiftUI

struct SignInTopAndMiddleLogoView: View {
    var body: some View {
        VStack {
            ImageViewBasedOnTheme(widthHeight: 120,
                                  imageForLightTheme: "gitping_text", imageForDarkTheme: "gitping_text").padding(.bottom, 50)
            
            ImageViewBasedOnTheme(widthHeight: 200,
                                  imageForLightTheme: "gitping_1024",
                                  imageForDarkTheme: "gitping_1024")
            .clipShape(Circle())
            .shadow(color: .white, radius: 5)
        }
    }
}

#Preview {
    SignInTopAndMiddleLogoView()
}
