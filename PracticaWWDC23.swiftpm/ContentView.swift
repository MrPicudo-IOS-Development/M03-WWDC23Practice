import SwiftUI

// El protocolo vista nos obliga a que tengamos una variable que se llama Body, que va a ser "algún" tipo de vista.
struct ContentView: View {
    
    var body: some View {
        
        // Creamos una TabView para manejar distintas pestañas en nuestro proyecto
        TabView {
            // Primera pestaña
            SimpleAnimation()
                .tabItem {
                    Label("Curso iOS lab", systemImage: "rectangle.inset.filled.and.person.filled")
                }
            
            // Segunda pestaña
            LoopAnimation()
                .tabItem {
                    Label("Giro animado", systemImage: "arrow.triangle.2.circlepath.circle")
                }
            
            // Tercer pestaña
            ShortVideo()
                .tabItem {
                    Label("Animation", systemImage: "video.fill")
                }
        }
        
        
        
    }
}


/* Los botones, las animaciones, solamente funcionan en el modo live.
 El modificador de tamaño Title, LargeTitle, etc. se adapta automáticamente a cualquier dispositivo.

 Si presionamos la tecla Command y damos clic en cualquier vista, podemos acceder al SwiftUI Inspector.
 
 El orden de los modificadores es importante, dependiendo del último modificador, va a intentar aplicarlo a ese tipo de vista.
 
 Todos los modificadores que tengan un número o valor asignado, pueden animarse, con el operador ternario.
 */
