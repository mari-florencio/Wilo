//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import Foundation
import SwiftUI

struct TryAgainView: View {
    @State var selectedColor: Color
    @State var shape: Shape
    @State var emotion: Emotion
    
    
    var body: some View {
        
        ZStack(alignment: .center) {
            
            Color(.black)
            
            
            Image(shape.getImageName())
             .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(selectedColor)
                .frame(width: 400, height: 400, alignment: .center)
                .padding(.top, 600)
            
            
            Image(emotion.getImageName())
            .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .padding(.top, 600)
            
            VStack {
              
             //   (alignment: .trailing, spacing: 3 )

                Text("Thank you for helping me on this journey! \nNow we see that programming can bring amazing things to life!")
                
                    .font(.system(size: 60, weight: .regular, design: .monospaced))
                    .foregroundColor(.white)
                    .padding(.all, 40)
                
                
                
                Text("Want to try again?")
                    .font(.system(size: 60, weight: .heavy, design: .monospaced))
                    .foregroundColor(.white)
                    .padding(.trailing, 250)
                
               
                
                HStack {
                
                    NavigationLink(destination: ContentView()) {
                        
                Text("YES")
                        .font(.system(size: 80, weight: .heavy, design: .monospaced))
                    .foregroundColor(.green)
                    .padding(.trailing, 40)
                    }
                    Spacer()
                    
                    NavigationLink(destination: ThanksView(selectedColor: selectedColor, shape: shape, emotion: emotion)) {
                Text("NO")
                    .font(.system(size: 80, weight: .heavy, design: .monospaced))
                    .foregroundColor(.yellow)
                    .padding(.trailing, 40)
                    }
                }
                .padding(90)
  
                    
               //     .frame(width: 1, height: 20, alignment: .trailing)
                  //  .padding(30)
//                    .alignmentGuide(VerticalAlignment.center) { _ in 20 }
                    
                
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct TryAgainView_Previews: PreviewProvider {
    static var previews: some View {
        TryAgainView(selectedColor: .secondary, shape: .amoeba, emotion: .doido)
    }
}
