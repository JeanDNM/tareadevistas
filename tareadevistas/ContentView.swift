//
//  ContentView.swift
//  tareadevistas
//
//  Created by Jeanpierre on 27/3/24.
//

import SwiftUI

class MiClase : ObservableObject {
   
    @Published var edad = 19
}
    
struct ContentView: View {
    
    @State private var seleccion:Int?
    @StateObject var miObjeto = MiClase()
    
    
    var body: some View {
        NavigationView{
        VStack{
            Text("Mi edad es : \(miObjeto.edad)")
            Button("incrementa un año"){
                miObjeto.edad += 1
            }
           
            NavigationLink(destination: vista1(), tag: 1, selection: $seleccion){
            Button("ir a otra vista"){
                seleccion = 1
            }
        }
        }.navigationTitle("Contentview")}.environmentObject(miObjeto)
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(MiClase())
    }
}
          
