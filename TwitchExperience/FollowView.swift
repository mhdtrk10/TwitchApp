//
//  FollowView.swift
//  TwitchExperience
//
//  Created by Mehdi Oturak on 14.11.2024.
//

import SwiftUI

struct FollowView: View {
    var body: some View {
        ZStack {
            Color("twitchBacgroundColor")
                .ignoresSafeArea()
            
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Takip Edilen Kategoriler")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 25 , weight: .bold))
                    
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0...10, id: \.self) { _ in
                                ItemView()
                                    .padding(.top)
                                    .padding(3)
                            }
                        }
                    }
                    Text("Canlı Kanallarınız")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 25))
                        .padding(.top)
                    ScrollView(.vertical) {
                        
                        VStack {
                            ForEach(0...10, id: \.self) { _ in
                                VerticalItemView()
                                    
                            }
                        }
                    }
                    
                    Spacer()
                    
                    
                }
                .padding(.top, 30)
            }
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    
                } label: {
                    ZStack {
                        Circle()
                            .foregroundColor(Color("YellowColor"))
                            .frame(width: 40, height: 40 , alignment: .center)
                        Image(systemName: "person")
                            .tint(Color.black)
                            
                    }
                    
                    
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    
                } label: {
                    
                    Image(systemName: "shippingbox")
                        .tint(Color.white)
                    
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    
                } label: {
                    
                    Image(systemName: "bubble.left")
                        .tint(Color.white)
                    
                }
            }

            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    
                } label: {
                    
                    Image(systemName: "tv.badge.wifi")
                        .tint(Color.white)
                    
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    
                    ZStack {
                        Capsule()
                            .foregroundColor(Color("CapsuleColor"))
                        HStack {
                            Image(systemName: "circle")
                                .tint(Color.white)
                            Text("Oluştur")
                                .foregroundColor(Color.white)
                                .font(.headline)
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                    }
                    
                }
            }

        }
    }
}

struct ItemView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Image("pubg")
                .resizable()
                .frame(width: 200 , height: 300, alignment: .center)
                
                
            Text("PUBG: BATTLEGROUNDS")
                .foregroundColor(.white)
                .bold()
            
            HStack {
                Circle()
                    .frame(width: 10, height: 10 , alignment: .center)
                    .foregroundColor(.red)
                Text("18,3 bin")
                    .foregroundColor(.gray)
            }
            
            
        }
        .frame(maxWidth:200)
    }
}
struct VerticalItemView: View {
    
    var body: some View {
        HStack(alignment: .bottom,spacing: 15) {
            //sol taraf
            ZStack(alignment: .leading) {
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170 , height: 100, alignment: .center)
                    
                VStack {
                    Spacer()
                    HStack {
                        Circle()
                            .frame(width: 10, height: 10 , alignment: .center)
                            .foregroundColor(.red)
                        Text("18,3 bin")
                            .foregroundColor(.white)
                    }
                }
                .padding(.leading,5)
                
                
            }
            //sağ taraf
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Image("pubg")
                        .resizable()
                        .frame(width: 20 , height: 20, alignment: .center)
                        .clipShape(Circle())
                    Text("shroud")
                        .foregroundColor(.white)
                        .bold()
                }
                Text("CS:2 LETS GOOO !announcement")
                    .foregroundColor(.gray)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0...3, id: \.self) { _ in
                            ZStack {
                                Capsule()
                                    .foregroundColor(.gray)
                                
                                Text("English")
                                    .foregroundColor(.white)
                            }
                            .frame(width: 90, height: 30, alignment: .center)
                        }
                    }
                }            }
            
        }
        
    }
    
}

#Preview {
    ContentView()
}
