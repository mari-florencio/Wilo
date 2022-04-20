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
                  
                    .frame(width: 800, height: 400, alignment: .leading)
                    .padding(.top)
             
                
                VStack {
                    
                    
                    Image(shape.getImageName())
                       // .strokeBorder(Color.black, lineWidth: 8)
                    //  .resizable()
                    //    .background(selectedColor)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 400, alignment: .center)
                        .foregroundColor(selectedColor)
                        .padding(60)
                        
                  // AQUI TA O COLOR PICKER!!
                    
                    ColorPicker("Choose the amazing color", selection: $selectedColor, supportsOpacity: false)
                        .font(.system(size: 40, weight: .regular, design: .monospaced))
                        .padding(60)
                  
                    NavigationLink(destination: GreatChoiceView(selectedColor: selectedColor, shape: shape)) {
                    
                        Image("ArrowB")
                        //  .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 900, height: 20, alignment: .trailing)
                            .padding(40)
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
