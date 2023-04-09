/* SimpleAnimation.swift --> PracticaWWDC23. Created by Miguel Torres on 09/04/23. */

import SwiftUI

struct SimpleAnimation: View {
    
    @State var girar: Bool = false // Cada vez que cambie esta variable, SwiftUI le avisa a la vista para que se actualice.
    @State var degrees: Int = 0
    
    var body: some View {
        
        ZStack {
            Color.green
                .ignoresSafeArea()
                .opacity(girar ? 1.0 : 0.5)
            VStack(spacing: 40) { // Sirve para agregar espacio entre los elementos de este contenedor.
                Image("Mario Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: girar ? 330 : 250)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 10)
                    .rotationEffect(Angle(degrees: girar ? 180: 0)) // Utilizamos el operador ternario.
                    .animation(.linear, value: girar)
                
                HStack(spacing: 20) {
                    Text(girar ? "" : "😎")
                        .font(.system(size: girar ? 35 : 60))
                        .shadow(radius: 10)
                    
                    Text(girar ? "Miguel Torres" : "Miguel")
                        .font(.system(size: girar ? 35 : 50))
                        .fontWeight(.black)
                        .foregroundColor(girar ? .white : .black)
                        .italic()
                        .underline(color: .gray)
                    
                    Text(girar ? "" : "😎")
                        .font(.system(size: girar ? 35 : 60))
                        .shadow(radius: 5)
                }
                
                Button("Girar") {
                    girar.toggle()
                    // degrees += 45
                }
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                
            }
            
        }
        
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        SimpleAnimation()
    }
}
