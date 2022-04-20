//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import Foundation
import SwiftUI

struct FeelingView: View {
    
    @State var selectedColor: Color
    @State var shape: Shape
    
    
    var body: some View {
        
        ZStack(alignment: .trailing) {
            
            Color(.black)
            
            Image(shape.getImageName())
                 .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 500, height: 500)
                    .padding(90)
        
           
            
            VStack {
              
             //   (alignment: .trailing, spacing: 3 )

                Text("But...I'm feeling a little empty")
                    .font(.system(size: 90, weight: .regular, design: .monospaced))
                    .foregroundColor(.white)
                    .padding(.leading, 90)
                
                
                
                Text("\nCan you give me some emotion?")
                    .font(.system(size: 90, weight: .heavy, design: .monospaced))
                    .foregroundColor(.white)
                    .padding(.leading, 30)
                
  
                NavigationLink(destination: EmotionsView(selectedColor: selectedColor, shape: shape))  {
                Image("Arrow")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 20, height: 60, alignment: .trailing)
                    .padding(.top, 90)
                    
               //     .frame(width: 1, height: 20, alignment: .trailing)
                  //  .padding(30)
//                    .alignmentGuide(VerticalAlignment.center) { _ in 20 }
                    
                }
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct FeelingView_Previews: PreviewProvider {
    static var previews: some View {
        FeelingView(selectedColor: .secondary, shape: .amoeba)
    }
}
