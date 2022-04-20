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
        
        ZStack(alignment: .leading) {
            Color(.black)
            
            VStack {
                
                //   (alignment: .trailing, spacing: 3 )
                
                Text("Our mission here is to help me come alive through programming.")
                    .font(.system(size: 70, weight: .regular, design: .monospaced))
                    .foregroundColor(.white)
                    .padding(.leading, 90)
                
                
                
                Text("\nCan you help me?")
                    .font(.system(size: 70, weight: .heavy, design: .monospaced))
                    .foregroundColor(.white)
                    .padding(.trailing, 150)
                
                HStack {
                    
                    Text("LET'S GO!")
                        .font(.system(size: 70, weight: .heavy, design: .monospaced))
                        .foregroundColor(.yellow)
                        .padding(.trailing, 210)
                    
                    
                    NavigationLink(destination: ShapesView()) {
                        Image("ArrowY")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 230, height: 230, alignment: .trailing)
                        
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

struct OurMissionView_Previews: PreviewProvider {
    static var previews: some View {
        OurMissionView()
    }
}
