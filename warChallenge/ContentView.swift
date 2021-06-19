//
//  ContentView.swift
//  warChallenge
//
//  Created by Nicolás Trípodi on 27/05/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var CPUCard = "card9"
    @State private var playerScore = 0
    @State private var CPUScore = 0
    
    
    var body: some View {
        
        ZStack {
            Image ("background")
                .ignoresSafeArea()
            Spacer()
            VStack {
                Spacer()
                Image("logo")
                    .padding(.top, 50.0)
                Spacer()
                HStack {
                    Spacer()
                    Image (playerCard)
                    Spacer()
                    Image (CPUCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                
                    //Generate a randon number between 2 & 14
                    
                    let playerRand = Int.random(in: 2...14)
                    let CPURand = Int.random(in: 2...14)
                    
                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    CPUCard = "card" + String(CPURand)
                    
                    //Update the score
                    if (playerRand>CPURand) {
                        playerScore += 1
                    }
                    else if (playerRand == CPURand) {
                    // do nothing
                    }
                    else {
                        CPUScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").padding(.bottom, 10.0)
                            .font(.title2)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").padding(.bottom, 10.0)
                            .font(.title2)
                        Text(String(CPUScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/).padding(.bottom, 40.0)
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
