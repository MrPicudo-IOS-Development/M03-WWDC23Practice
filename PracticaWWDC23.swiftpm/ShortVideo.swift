/* ShortVideo.swift --> PracticaWWDC23. Created by Miguel Torres on 09/04/23. */

import SwiftUI

struct ShortVideo: View {
    
    @State var girar: Bool = false // Cada vez que cambie esta variable, SwiftUI le avisa a la vista para que se actualice.
    @State var degrees: Int = 0
    @State var times: Double = 0.0
    @State var name: String = "Mario Image"
    
    var body: some View {
        VStack(spacing: 40) { // Sirve para agregar espacio entre los elementos de este contenedor.
            Image(name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 20)
                .rotationEffect(Angle(degrees: Double(degrees)))
                .padding(.bottom, 50)
            
            Button("Animación") {
                for i in 1...21 {
                    Timer.scheduledTimer(withTimeInterval: 0.1 * times, repeats: false) { timer in
                        name = String(i)
                        if i == 21 {
                            name = "Mario Image"
                        }
                    }
                    times += 1 // Modificamos el contador para que cada ciclo se muestre en un tiempo distinto
                }
                times = 0.0
            }
                .frame(width: 300.0, height: 50.0)
                .font(.system(size: 50))
                .foregroundColor(.black)
                .background(Color.gray)
                .cornerRadius(15)
        }
        
    }
}

struct ShortVideo_Previews: PreviewProvider {
    static var previews: some View {
        ShortVideo()
    }
}
