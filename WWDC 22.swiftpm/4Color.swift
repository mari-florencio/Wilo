//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import SwiftUI

struct ColorsView: View {
    @State var selectedColor: Color
    @State var shape: Shape
    
    var body: some View {
        
        ZStack {
            
            Color(.white)
            
            VStack {
                
                
                Text("Help me\nchoose a\ncolor")
                    .font(.system(size: 70, weight: .heavy, design: .monospaced))
                    .foregroundColor(.black)
                
                    .frame(width: 750, height: 280, alignment: .leading)
                
                
                VStack {
                    
                    
                    Image(shape.getImageName())
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 400, alignment: .center)
                        .foregroundColor(selectedColor)
                        .padding(50)
                    
                    // AQUI TA O COLOR PICKER!!
                    
                    ColorPicker("Choose the amazing color", selection: $selectedColor, supportsOpacity: false)
                        .font(.system(size: 30, weight: .regular, design: .monospaced))
                        .frame(width: 750, height: 100, alignment: .leading)
                    
                    NavigationLink(destination: GreatChoiceView(selectedColor: selectedColor, shape: shape)) {
                        
                        Image("ArrowB")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 800, height: 40, alignment: .center)
                           .padding(.top, 50)
                    }
                    
                }
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView(selectedColor: .secondary, shape: .amoeba)
    }
}
