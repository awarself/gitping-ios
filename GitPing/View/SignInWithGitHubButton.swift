import SwiftUI

struct SignInWithGitHubButton: View {
    var onTap: () -> Void
    
    var body: some View {
        VStack {
            Button(action: onTap) {
                HStack {
                    Image("github-mark")
                        .resizable()
                        .frame(width: 25, height: 25)
                    
                    CustomText(text: TextConstant.kGitHubSignInTitle,size: 14, color: .color6A707C, weight: .semibold)
                   
                }
                
                .frame(width: 280)
                .padding()
                
            }
            .background(
                RoundedRectangle(cornerRadius: 500)
                    .stroke(Color(.colorE8ECF4), lineWidth: 2)
            )
        }
   
   
    }
}

#Preview {
    SignInWithGitHubButton(onTap: {
        print("hello")
    })
}

