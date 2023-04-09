/* Vibrations.swift --> PracticaWWDC23. Created by Miguel Torres on 09/04/23. */

import SwiftUI

struct LoopAnimation: View {

    @State var degrees: Int = 0
    @State var times: Double = 0.0

    var body: some View {
        VStack(spacing: 40) { // Sirve para agregar espacio entre los elementos de este contenedor.
            Image("Mario Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 20)
                .rotationEffect(Angle(degrees: Double(degrees)))
                .padding(.bottom, 50)
            
            Button("Girar") {
                for _ in 1...24 {
                    Timer.scheduledTimer(withTimeInterval: 0.05 * times, repeats: false) { timer in
                        degrees += 15
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

struct Vibrations_Previews: PreviewProvider {
    static var previews: some View {
        LoopAnimation()
    }
}
