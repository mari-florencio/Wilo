//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import Foundation
import SwiftUI

struct OurMissionView: View {
    var body: some View {
        
        ZStack {
            
            Color(.black)
            
            VStack (alignment: .center) {
                
                
                Text("Our mission here is to help me come alive through programming.")
                    .font(.system(size: 70, weight: .regular, design: .monospaced))
                    .foregroundColor(.white)
                    .frame(width: 750, height: 450, alignment: .leading)
                
                
                Text("\nCan you help me?")
                    .font(.system(size: 70, weight: .heavy, design: .monospaced))
                    .foregroundColor(.white)
                    .frame(width: 750, height: 200, alignment: .leading)
                
                HStack {

                    NavigationLink(destination: ShapesView()) {
                        
                        
                        Text("LET'S GO!")
                            .font(.system(size: 70, weight: .heavy, design: .monospaced))
                            .foregroundColor(.yellow)
                            .padding(.trailing, 120)
                        
                        
                        Image("ArrowY")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 230, height: 200, alignment: .trailing)
                        
                    }
                    
                }
            }
            .padding(60)
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct OurMissionView_Previews: PreviewProvider {
    static var previews: some View {
        OurMissionView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
