//
//  vista1.swift
//  tareadevistas
//
//  Created by Jeanpierre on 27/3/24.
//

import SwiftUI

struct vista1: View {
    
    @State private var seleccion:Int?
    @EnvironmentObject var miObjeto : MiClase
    
    var body: some View {
        NavigationView{
        VStack{
            Text("Mi edad es : \(miObjeto.edad)")
            Button("incrementa dos año"){
                miObjeto.edad += 2
            }
            NavigationLink(destination: vista2(), tag: 2, selection: $seleccion){
            Button("ir a otra vista"){
                seleccion = 2
    }
    }
        }.navigationTitle("vista1")
            
        }
    }

struct vista1_Previews: PreviewProvider {
    static var previews: some View {
        vista1().environmentObject(MiClase())    }
}
}
