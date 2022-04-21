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
                
                
                Text("Choose\nmy shape")
                    .font(.system(size: 40, weight: .heavy, design: .monospaced))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 300, height: 120, alignment: .center)
                    .padding(.bottom, 40)
                
                
                VStack {
                    
                    NavigationLink(destination: BodyView(shape: .star)) {
                        Image("Star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 150, alignment: .center)
                            .foregroundColor(.secondary)
                        
                    }
                    
                    HStack {
                        
                        NavigationLink(destination: BodyView(shape: .circle)) {
                            Image("Circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150, alignment: .center)
                                .foregroundColor(.secondary)
                            
                        }
                        
                        NavigationLink(destination: BodyView(shape: .amoeba)) {
                            Image("Amoeba")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200, height: 250)
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
