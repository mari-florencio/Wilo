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
                
                
                Text("Great choise!")
                    .font(.system(size: 235, weight: .heavy, design: .monospaced))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: .infinity, height: 900, alignment: .center)
                
                NavigationLink(destination: FeelingView(selectedColor: selectedColor, shape: shape)) {
                    Image("ArrowB")
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 20, alignment: .center)
                        .padding(10)
                    
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
