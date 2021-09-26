//
//  ContentView.swift
//  SwiftUIPractice2
//
//  Created by 松尾淳平 on 2021/09/26.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)

                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()

            Spacer()
        }
    }
}


struct CircleImage: View {
    var body: some View {
        Image("turtlelock").frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(Circle()).overlay(Circle().stroke(Color.gray,lineWidth: 4)).shadow(radius: 7)
    }
}

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))

    var body: some View {
        Map(coordinateRegion: $region)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        CircleImage()
//        MapView()
    }
}
