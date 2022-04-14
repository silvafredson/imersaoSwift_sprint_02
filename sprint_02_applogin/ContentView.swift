//
//  ContentView.swift
//  sprint_02_applogin
//
//  Created by Fredson Silva on 13/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // MARK: background gradiente
        ZStack {
            
            AngularGradient(gradient: Gradient(colors:
                            [Color.white,
                             Color.purple,
                             Color.black,
                             Color.purple]),
                            center: .bottomLeading)
                           
           .ignoresSafeArea()
            
            // MARK: Arrow and rectangle
            VStack {
                
                Image(systemName: "arrow.backward")
                    .font(.system(size: 20, weight: .light))
                    .padding(.leading, 35.0)
                    .frame(width: 90, height: 45)
                    .background(Color.yellow, alignment: .center)
                    .cornerRadius(6)
                    
            }
            .frame(width: 105, height: 660, alignment: .topLeading)
            .padding(.trailing, 320.0)
            
            
            // MARK: Text and user image
            VStack {
                
         
                // TODO: improve the alignment
                
 
                Text("      Hello!")
                    .font(.custom("AbrilFatface-Regular", size: 25))
                    .foregroundColor(.yellow)
                    //.frame(width: 20, height: 20, alignment: .center)
                
                + Text("Signup  to ")
                    .font(.custom("AbrilFatface-Regular", size: 25))
                    .foregroundColor(.yellow)
                
                + Text("get  started")
                    .font(.custom("AbrilFatface-Regular", size: 25))
                    .foregroundColor(.yellow)
                ZStack {
                    
                    RoundedRectangle (cornerRadius: 8)
                        .fill(Color.yellow)
                        .frame(width: 70, height: 70, alignment: .center)
                    
                    Image("Fredson02")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80, alignment: .center)
                        .cornerRadius(10)
                        .shadow(radius: 20)
                }
                    
            }
            .frame(width: 145, height: 550, alignment: .top)
            
           
            VStack {
                
                // MARK: Name
                VStack {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color("Color02"))
                            .frame(width: 300, height: 40, alignment: .center)
                            .shadow(radius: 6)
                        
                        Text("Name")
                            .foregroundColor(.black)
                            .font(.system(size: 12, weight: .light))
                            .frame(width: 260, alignment: .leading)
                    }
                }
                
                // MARK: Email Address
                VStack {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color("Color02"))
                            .frame(width: 300, height: 40, alignment: .center)
                            .shadow(radius: 6)
                        
                        Text("Email Address")
                            .foregroundColor(.black)
                            .font(.system(size: 12, weight: .light))
                            .frame(width: 260, alignment: .leading)
                    }
                }
                
                // MARK: Password
                VStack {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color("Color02"))
                            .frame(width: 300, height: 40, alignment: .center)
                            .shadow(radius: 6)
                        
                        Text("Password")
                            .foregroundColor(.black)
                            .font(.system(size: 12, weight: .light))
                            .frame(width: 260, alignment: .leading)
                    }
                }
                
                // MARK: Signup
                VStack {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 8)

                            .fill(Color.yellow)
                        
                            .frame(width: 300, height: 40, alignment: .center)
                            .shadow(radius: 6)
                        
                        Text("Signup")
                            .foregroundColor(.purple)
                            .font(.system(size: 15, weight: .medium))
                            .frame(width: 260, alignment: .center)
                    }
                }
                .padding()
            }
            .frame(width: 300, height: 320, alignment: .bottom)
            
            // MARK: Bottom Text
            HStack {
                Text("Already have An Account?   ")
                    .font(.system(size: 12))
                    .foregroundColor(Color.yellow)
                + Text("Sign in")
                    .font(.system(size: 12))
                    .foregroundColor(Color.yellow)
                    .underline()
            }
            .frame(width: 300, height: 355, alignment: .bottom)
            
            // MARK: wave icon
            VStack {
                Image("wave05")
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0, maxHeight: 760, alignment: .bottom)
                    
            }
            .ignoresSafeArea()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
