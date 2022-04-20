//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import Foundation
import SwiftUI

struct AliveView: View {
    @State var selectedColor: Color
    @State var shape: Shape
    @State var emotion: Emotion
    
    
    
    var body: some View {
        
        GeometryReader { geo in
            
        ZStack(alignment: .leading) {
            Image("bg")
                .resizable()
                .scaledToFill()
                .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            
            VStack {
              
             //   (alignment: .trailing, spacing: 3 )

                Text("Now I'm feeling it...")
                    .font(.system(size: 100, weight: .regular, design: .monospaced))
                    .foregroundColor(.black)
                    .padding(.leading, 10)
                
                
                
                Text("\nAnd I am..")
                    .font(.system(size: 100, weight: .regular, design: .monospaced))
                    .foregroundColor(.black)
                    .padding(.trailing, 160)
                
                HStack {
                
                Text("ALIVE!")
                    .font(.system(size: 170, weight: .heavy, design: .monospaced))
                    .foregroundColor(.black)
                   .padding(.leading, 70)
                   .padding(.top, 60)
                
                    
                    NavigationLink(destination: ResultView(selectedColor: selectedColor, shape: shape, emotion: emotion)) {
                    
                        Image("ArrowB")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 230, height: 230, alignment: .trailing)
                    }
                    
               //     .frame(width: 1, height: 20, alignment: .trailing)
                  //  .padding(30)
//                    .alignmentGuide(VerticalAlignment.center) { _ in 20 }
                    
                }
            }
        }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct AliveView_Previews: PreviewProvider {
    static var previews: some View {
        AliveView(selectedColor: .secondary, shape: .amoeba, emotion: .apx)
    }
}
