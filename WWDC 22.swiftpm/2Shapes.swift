//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        
        ZStack(alignment: .center) {
            
            Color(.white)
            
            VStack {
                
                
                Text("Choose my shape")
                    .font(.system(size: 70, weight: .heavy, design: .monospaced))
                    .foregroundColor(.black)
                    .padding(.bottom, 60)
                
                
                VStack {
                    
                    NavigationLink(destination: BodyView(shape: .star)) {
                        Image("Star")
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 400, height: 400, alignment: .center)
                            .foregroundColor(.secondary)
                        
                    }
                    
                    HStack {
                        
                        NavigationLink(destination: BodyView(shape: .circle)) {
                            Image("Circle")
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 400, height: 400, alignment: .center)
                                .foregroundColor(.secondary)
                            
                        }
                        
                        NavigationLink(destination: BodyView(shape: .amoeba)) {
                            Image("Amoeba")
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 400, height: 400)
                                .foregroundColor(.secondary)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
