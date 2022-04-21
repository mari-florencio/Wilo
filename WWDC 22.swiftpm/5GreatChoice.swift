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
                .frame(width: 380, height: 600, alignment: .center)
            
            VStack {
                
                
                Text("Great choise!")
                    .font(.system(size: 100, weight: .heavy, design: .monospaced))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 320, height: 650, alignment: .center)
                
                NavigationLink(destination: FeelingView(selectedColor: selectedColor, shape: shape)) {
                    
                    Image("ArrowB")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 20, alignment: .center)
                        .padding(.top, 30)
                    
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
