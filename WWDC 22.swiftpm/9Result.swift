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
        
        
        GeometryReader { geo in
            
            ZStack(alignment: .center) {
                Image("bgg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                
                
                
                ZStack {
                    
                    
                    Image(shape.getImageName())
                     .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(selectedColor)
                        .frame(width: 600, height: 600, alignment: .center)
                    
                    
                    
                    Image(emotion.getImageName())
                    //  .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 400)
                        .padding(.bottom,150)
                    
                    NavigationLink(destination: TryAgainView(selectedColor: selectedColor, shape: shape, emotion: emotion)) {
                    
                        Image("Arrow")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 230, height: 230, alignment: .trailing)
                            .padding(.top, 1000)
                    }
                    
                    
                }
                
            }
            .edgesIgnoringSafeArea(.all)
            
        }
        
    }
    
    struct ResultView_Previews: PreviewProvider {
        static var previews: some View {
            ResultView(selectedColor: .secondary, shape: .amoeba, emotion: .doido)
        }
    }
}

