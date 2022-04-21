//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
      
           
            ZStack  {
                Color("purple")
                
                VStack {
                    
                    
                    Text("Hello,\nI'm Wilo!")
                        .font(.system(size: 40, weight: .heavy, design: .monospaced))
                        .foregroundColor(.white)
                        .frame(width: 300, height: 100, alignment: .leading)
                    
                    
                    Text("\nAnd I have just been created")
                        .font(.system(size: 40, design: .monospaced))
                        .foregroundColor(.white)
                        .frame(width: 300, height: 200, alignment: .leading)
                    
                    NavigationLink(destination: OurMissionView()) {
                        Image("Arrow")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 60, alignment: .leading)
                            .foregroundColor(.white)
                            .padding(.top, 50)
                            
                            
                       
                                        
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
