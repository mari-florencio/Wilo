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
                .frame(width: 500, height: 600, alignment: .center)
                .padding(.top, 400)
            
            
            Image(emotion.getImageName())
            .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .padding(.top, 300)
            
            VStack {
              

                Text("Thank you for helping me on this journey! Now we see that programming can bring amazing things to life!")
                
                    .font(.system(size: 45, weight: .regular, design: .monospaced))
                    .foregroundColor(.white)
                    .frame(width: 750, height: 350, alignment: .leading)
                  //  .padding(.bottom, 100)
                
                
                
                Text("Want to try again?")
                    .font(.system(size: 50, weight: .heavy, design: .monospaced))
                    .foregroundColor(.white)
                    .frame(width: 750, height: 100, alignment: .leading)
                    .padding(.bottom, 330)
                
               
                
                HStack {
                
                    NavigationLink(destination: ContentView()) {
                        
                Text("YES")
                        .font(.system(size: 80, weight: .heavy, design: .monospaced))
                    .foregroundColor(.green)
                    .frame(width: 200, height: 100, alignment: .center)
                    .padding(.leading, 90)
                        
                    }
                    
                        Spacer()
                    
                    NavigationLink(destination: ThanksView(selectedColor: selectedColor, shape: shape, emotion: emotion)) {
                Text("NO")
                    .font(.system(size: 80, weight: .heavy, design: .monospaced))
                    .foregroundColor(.yellow)
                    .frame(width: 200, height: 100, alignment: .center)
                    .padding(.trailing, 90)
                        
                    }
                }
                
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
