//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
      
           
            ZStack(alignment: .leading) {
                Color("purple")
                
                VStack {
                    
                    
                    //   (alignment: .trailing, spacing: 3 )
                    
                    Text("Hello,\nI'm Wilo!")
                        .font(.system(size: 96, weight: .heavy, design: .monospaced))
                        .foregroundColor(.white)
                       .padding(.leading, 40)
                    
                    
                    Text("\nAnd I have just been created")
                        .font(.system(size: 96, design: .monospaced))
                        .foregroundColor(.white)
                       .padding(.leading, 135)
                    
                    
                   // .alignmentGuide(VerticalAlignment.center) { _ in 20 }
                    
                    NavigationLink(destination: OurMissionView()) {
                        Image("Arrow")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 500, height: 65, alignment: .center)
                            .foregroundColor(.white)
                            .padding()
                            
                       
                                        
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
