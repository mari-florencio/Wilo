//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import SwiftUI

struct GreatChoiceView: View {
    
    @State var selectedColor: Color
    @State var shape: Shape
    
    var body: some View {
        
        ZStack(alignment: .center) {
            

            Image(shape.getImageName())
                 .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(selectedColor)
                    .frame(width: 700, height: 700, alignment: .center)
            
            VStack {
                
                NavigationLink(destination: FeelingView(selectedColor: selectedColor, shape: shape)) {
                    
                Text("Great choise!")
                    .font(.system(size: 320, weight: .heavy, design: .monospaced))
                    .foregroundColor(.black)
                    //.padding(60)
                
             
                }
            }
            
        }
        
        .edgesIgnoringSafeArea(.all)
        
        
    }
    
}

struct GreatChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        GreatChoiceView(selectedColor: .secondary, shape: .amoeba)
    }
}
