import SwiftUI

struct PolicyView : View {
    
    @State var showPolicy: Bool = false
    
    var body: some View {
        HStack(spacing: 2){
            CustomText(text: "By signing in, I agree to the", size: 13, color: .color545454)
            CustomText(text: "TOS & Privacy Policy", size: 13, weight: .bold)
                .onTapGesture{ showPolicy = true }
        }
        .sheet(isPresented: $showPolicy){
            SafariWebView(urlString: AppConstant.policyUrl)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    PolicyView()
}
