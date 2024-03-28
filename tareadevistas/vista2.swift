//
//  vista2.swift
//  tareadevistas
//
//  Created by Jeanpierre on 27/3/24.
//

import SwiftUI

struct vista2: View {
 @State private var seleccion:Int?
 @EnvironmentObject var miObjeto : MiClase
        
        var body: some View {
            NavigationView{
            VStack{
                Text("Mi edad es : \(miObjeto.edad)")
                Button("incrementa tres año"){
                    miObjeto.edad += 3
            
}
}.navigationTitle("vista2")
}
        }
}

struct vista2_Previews: PreviewProvider {
    static var previews: some View {
        vista2().environmentObject(MiClase())
        
    }
}
        


