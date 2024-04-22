//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by António Loureiro on 19/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, Color("lightblue")],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Porto, PT")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                    Text("22º")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 40)

                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 21)

                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.rain.fill",
                                   temperature: 22)

                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "sun.rain.fill",
                                   temperature: 20)

                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.bolt.fill",
                                   temperature: 23)

                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "sun.max.fill",
                                   temperature: 25)

                }

                Spacer()

                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .cornerRadius(10.0)
                }

                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {

    var dayOfWeek: String
    var imageName: String
    var temperature: Int

    var body: some View {

        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("\(temperature)")
                .font(.system(size: 24, weight: .medium))
                .foregroundStyle(.white)
            
        }
    }
}
