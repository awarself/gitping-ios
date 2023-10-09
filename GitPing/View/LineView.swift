import SwiftUI

struct LineView: View{
    var body: some View{
        Rectangle()
            .foregroundColor(.gray)
            .frame(width:80, height: 4)
    }
}


#Preview{
    LineView()
}

