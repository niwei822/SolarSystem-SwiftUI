//
//  PlanetListView.swift
//  SolarSystem-SwiftUI
//
//  Created by new on 7/6/22.
//

import SwiftUI

struct PlanetListView: View {
    var body: some View {
        NavigationView {
            VStack {
//                Image("galaxy")
//                    .edgesIgnoringSafeArea(.all)
//
                List(PlanetDataStore.planets) {
                    planet in
                    NavigationLink {
                        DetailView(planet: .constant(planet))
                        
                    } label: {
                        PlanetLabelView (planetName: planet.planetName, planetImage: planet.imageName, planetOrder: planet.orderNumber
                        )
                        .navigationTitle("Solar System")
                        .listRowBackground(Color.clear)
                            
                        }
                    }
                    }
                }
            }
        }
    


struct PlanetListView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetListView()
    }
}

struct PlanetLabelView: View {
  let planetName: String
  let planetImage: String
  let planetOrder: Int

  var body: some View {
    HStack {
      Image(planetImage)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 50, height: 50, alignment: .leading)
      VStack(alignment: .leading) {
        Text(planetName)
        Text("\(planetOrder)")
      }
    }
    .padding(8)
  }
}
