import SwiftUI

struct SignInScreenView: View {
    
    @State var showSignInSheet: Bool = false
    
    var body: some View {
        ZStack{
            BackgroundView()
            VStack{
                SignInTopAndMiddleLogoView()
                Spacer()
                Color.white.overlay(
                    VStack{
                        LineView().padding(.bottom, 20).padding(.top, 20)
                        CustomText(text: TextConstant.kWelcome,size: 32, color: .color545454, weight: .bold).padding(.bottom, 7)
                        CustomText(text: TextConstant.kSlogan,size: 15, color: .color545454).padding(.bottom, 30)
                        SignInWithGitHubButton(
                            onTap: {
                                showSignInSheet = true
                            }
                        ).padding(.bottom, 30)
                        PolicyView().padding(.bottom, 30)
                    }
                )
                .cornerRadius(40,corners: [.topLeft, .topRight])
                .ignoresSafeArea()
                .frame(maxWidth: .infinity, maxHeight: 270)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .fullScreenCover(isPresented: $showSignInSheet){
            SafariWebView(urlString: AppConstant.githubSignInUrl)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    SignInScreenView()
}


