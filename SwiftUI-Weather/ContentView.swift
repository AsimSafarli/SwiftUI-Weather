//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Asim Seferli on 10.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color("LightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                           .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Baku , Az ")
                    .font(.system(size: 32,weight: .bold, design:.default))
                    .foregroundColor(Color.white)
                    .padding()
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.rain.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    Text("32°C")
                        
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(Color.white)
                }
                .padding(.bottom,40)
                HStack(spacing: 20){
                    ExtractedView( dayOfWeek: "TUE" , image:"cloud.sun.rain.fill", temperature:32)
                    ExtractedView( dayOfWeek: "WEN" , image:"sun.max.fill", temperature:22)
                    ExtractedView( dayOfWeek: "THU" , image:"wind.snow", temperature:22)

                    ExtractedView( dayOfWeek: "FRI" , image:"cloud.fill", temperature:22)
                    ExtractedView( dayOfWeek: "SAT" , image:"cloud.snow.fill", temperature:22)


                }
                Spacer()
                Button{
                    print("tabbet")
                } label: {
                  Text("Change The Time")
                        .frame(width: 280,height: 50)
                        .background(Color.white)
                        .cornerRadius(12)
                }
                Spacer()

            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var dayOfWeek: String
    var image: String
    var temperature: Int

    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(Color.white)
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(Color.white)
        }
    }
}

