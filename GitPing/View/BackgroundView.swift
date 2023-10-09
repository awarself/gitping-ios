import Foundation
import SwiftUI

struct BackgroundView:  View{
    
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.black, .black, .white]), startPoint: .topTrailing, endPoint: .bottomTrailing)
            
            Image("spiral_lines").padding(.leading,-50)
          
            
        }.ignoresSafeArea()
        
    }
}


#Preview{
    BackgroundView()
}
