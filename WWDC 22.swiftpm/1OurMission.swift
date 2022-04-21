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
            
            VStack {
                
                
                Text("Our mission here is to help me come alive through programming.")
                    .font(.system(size: 40, weight: .regular, design: .monospaced))
                    .foregroundColor(.white)
                    .frame(width: 300, height: 350, alignment: .leading)
                
                
                Text("Can you help me?")
                    .font(.system(size: 40, weight: .heavy, design: .monospaced))
                    .foregroundColor(.white)
                    .frame(width: 300, height: 120, alignment: .leading)
                
                HStack {

                    NavigationLink(destination: ShapesView()) {
                        
                        
                        Text("LET'S GO!")
                            .font(.system(size: 35, weight: .heavy, design: .monospaced))
                            .foregroundColor(.yellow)
                           .padding(.trailing, 5)
                        
                        
                        Image("ArrowY")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 95, height: 70, alignment: .leading)
                        
                    }
                    
                }
            }
            
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
