//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
      
           
            ZStack(alignment: .center) {
                Color("purple")
                
                VStack {
                    
                    //   (alignment: .trailing, spacing: 3 )
                    
                    Text("Hello,\nI'm Wilo!")
                        .font(.system(size: 96, weight: .heavy, design: .monospaced))
                        .foregroundColor(.white)
                        .padding(.trailing,150)
                    
                    
                    Text("\nAnd I have just been created")
                        .font(.system(size: 96, design: .monospaced))
                        .foregroundColor(.white)
                      //  .padding(.leading,80)
                    
                    
                   // .alignmentGuide(VerticalAlignment.center) { _ in 20 }
                    
                    NavigationLink(destination: OurMissionView()) {
                        Image("Arrow")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 160, alignment: .trailing)
                            .foregroundColor(.white)
                            .padding(.trailing, 340)
                                        
                    }
                    
                }
                
            }
           .edgesIgnoringSafeArea(.all)
            
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
