//
//  ContentView.swift
//  Convertion
//
//  Created by  Ixart on 16/01/2024.
//

import SwiftUI
struct ContentView: View {
    @State private var slide = 500.0   // pour le lier au slide et le faire fonctioner
    
    var kelvin: Double {
           return slide + 1266.52 // ajoute 1266.52 à 500.0 du slide
        
       }

    
    var fahrenheit: Double {
            return (slide * 9/5) + 32 // ajoute 500.0 du slide à 9/5) + 32
        }
    
    var celsius: Double {
           return (slide - 32) * 5/9 // ajoute 500.0 du slide à - 32  * 5/9
       }
    
    
    
    var body: some View {
        VStack{
            HStack(spacing:-1) {
                        ZStack{
                            ZStack{
                                
                                Rectangle()
                                               .frame(width : 140, height : 900) // Largeur et hauteur de la bande
                                               .foregroundColor(Color.orange) // Couleur de la bande
                                               .padding(.trailing, 260) // Décalage de 50 points vers la gauche
                                VStack{
                                    Text("kelvin")
                                    Text("\(kelvin, specifier: "%.2f")")

                                    
                                    
                                }// FIN VSTACK
                                
                                
                                    .padding(.leading, -170)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.title2)

                                                        } // ZSTACK
                                                        
                                                        
                                                        
                                                        
                            ZStack{
                                Rectangle()
                                               .frame(width: 140, height: 900) // Largeur et hauteur de la bande
                                               .foregroundColor(Color.blue) // Couleur de la bande
                                               .padding(.vertical, 140) // Décalage de 50 points vers la gauche
                                VStack{
                                    Text("Fahrenheit")
                                    Text("\(fahrenheit, specifier: "%.2f")")

                                    
                                    
                                    
                                } // FIN VSTACK

                                    .padding(.leading, -10)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.title2)
                                
                                
                       
                            } // FIN  ZSTACK
                                                        
                                               
                                                        
                            ZStack{
                                Rectangle()
                                                .frame(width: 140, height: 900) // Largeur et hauteur de la bande
                                                .foregroundColor(Color.purple) // Couleur de la bande
                                                .padding(.leading,280) // Décalage de 50 points vers la gauche
                                VStack{
                                    Text("Celsius")
                                    Text("\(celsius, specifier: "%.2f")")


                                } // FIN DE VSTACK
                                
                                    .padding(.leading, +250)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.title2)
                                                            
                                                        } // fin  ZSTACK
                            
                            
                            Slider(value: $slide, in: 0...1000) //  slider lier a @state
                                          .padding(.vertical)
                                          .padding(.init(top: +800, leading: 0, bottom: 100, trailing: 0))
                            
                                
                                
                            } // ZSTACK
                    } // HSTACK 2
        } // VSTACK 1
    } //    BODY
} //    STRUCT

#Preview {
    ContentView()
}



