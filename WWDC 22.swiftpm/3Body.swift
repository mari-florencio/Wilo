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
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 500, height: 500)
                .padding(.leading, 220)
                .foregroundColor(.black)
            
        }
        
        VStack {
            
            
            Text("Thank \nyou!")
                .font(.system(size: 130, weight: .heavy, design: .monospaced))
                .frame(width: 700, height: 450, alignment: .leading)
                .foregroundColor(.white)
            
            
            Text("Now we need a color for my body")
                .font(.system(size: 70, design: .monospaced))
                .foregroundColor(.white)
                .frame(width: 700, height: 300, alignment: .leading)
            
            
            NavigationLink(destination: ColorsView(selectedColor: .secondary, shape: shape)) {
                
                Image("Arrow")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 500, height: 60, alignment: .leading)
                    .padding(.trailing, 200)
                    .padding(.top, 40)
                
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
