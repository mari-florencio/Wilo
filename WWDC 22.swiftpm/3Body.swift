//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import Foundation
import SwiftUI

struct BodyView: View {
    
    @State var shape: Shape
    
    var body: some View { ZStack {
        Color("Green")
        
        ZStack(alignment: .leading) {
            Image(shape.getImageName())
            //  .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 600, height: 600)
                .padding(.leading, 400)
                .foregroundColor(.secondary)
//                .alignmentGuide(VerticalAlignment.center) { _ in 900 }
        }
        
        VStack {
            
            //   (alignment: .trailing, spacing: 3 )
            
            Text("Thank you!")
                .font(.system(size: 130, weight: .heavy, design: .monospaced))
                .foregroundColor(.white)
                .padding(.trailing,290)
            
            
            Text("\nNow we need a color for my body")
                .font(.system(size: 70, design: .monospaced))
                .foregroundColor(.white)
                .padding(.leading,80)
            
            NavigationLink(destination: ColorsView(selectedColor: .secondary, shape: shape)) {
                
            Image("Arrow")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 55, height: 55, alignment: .trailing)
                .foregroundColor(.white)
                .padding(.top, 120)
            
            }
            
            
        }
        
    }
    .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct BodyView_Previews: PreviewProvider {
    static var previews: some View {
        BodyView(shape: .star
        )
    }
}
