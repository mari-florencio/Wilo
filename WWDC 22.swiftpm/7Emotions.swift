//
//  File.swift
//  WWDC 22
//
//  Created by Mariana Florencio on 18/04/22.
//

import SwiftUI

struct EmotionsView: View {
    @State var selectedColor: Color
    @State var shape: Shape
    
    
    var body: some View {
        
        ZStack(alignment: .center) {
            
            Color("amarelo")
            
            VStack {
                
                HStack {
                    
                    NavigationLink(destination: AliveView(selectedColor: selectedColor, shape: shape, emotion: .sad)) {
                        
                        Image("sad")
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 300, alignment: .center)
                    }
                    
                    VStack {
                        
                        NavigationLink(destination: AliveView(selectedColor: selectedColor, shape: shape, emotion: .apx)) {
                            
                            Image("apx")
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 300, height: 300, alignment: .center)
                        }
                        
                    }
                    
                }
                
                HStack {
                    
                    NavigationLink(destination: AliveView(selectedColor: selectedColor, shape: shape, emotion: .doido)) {
                        
                        Image("doido")
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 300)
                        
                    }
                    
                    VStack {
                        
                        NavigationLink(destination: AliveView(selectedColor: selectedColor, shape: shape, emotion: .ok)) {
                            
                            Image("ok")
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 400, height: 400, alignment: .center)
                        }
                    }
                }
                
                HStack {
                    
                    NavigationLink(destination: AliveView(selectedColor: selectedColor, shape: shape, emotion: .lingua)) {
                        
                        Image("lingua")
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 400, height: 400)
                        
                    }
                    
                    VStack {
                        
                        NavigationLink(destination: AliveView(selectedColor: selectedColor, shape: shape, emotion: .noiz)) {
                            
                            Image("noiz")
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 400, height: 400, alignment: .center)
                            
                        }
                        
                    }
                }
            }
        }
        
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct EmotionsView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionsView(selectedColor: .secondary, shape: .amoeba)
    }
}


