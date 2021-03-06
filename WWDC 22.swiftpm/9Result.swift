//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import SwiftUI

struct ResultView: View {
    
    @State var selectedColor: Color
    @State var shape: Shape
    @State var emotion: Emotion
    
    
    
    var body: some View {
        
        
        //GeometryReader { geo in
            
            ZStack {
                
                Color(.black)
                
//                Image("bgg")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                
                
                
                ZStack {
                    
                    
                    Image(shape.getImageName())
                     .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(selectedColor)
                        .frame(width: 350, height: 700, alignment: .center)
                    
                    
                    
                    Image(emotion.getImageName())
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                      //  .padding(.bottom, 150)

                    
                    NavigationLink(destination: TryAgainView(selectedColor: selectedColor, shape: shape, emotion: emotion)) {
                    
                        
                        Image("Arrow")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 15, alignment: .center)
                          .padding(.top, 700)
                    }
                    
                    
              //  }
                
            }
                
            
        }
            .edgesIgnoringSafeArea(.all)
        
    }
    
    struct ResultView_Previews: PreviewProvider {
        static var previews: some View {
            ResultView(selectedColor: .secondary, shape: .amoeba, emotion: .doido)
        }
    }
}

