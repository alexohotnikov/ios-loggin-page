//
//  ContentView.swift
//  loginPage
//
//  Created by Саша on 31.01.2021.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

let usernameRoot = "admin"
let passwordRoot = "1"

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    @State var autedDidFail: Bool = false
    @State var autedDidSuccess: Bool = false
    var body: some View {
        ZStack {
            VStack {
                HelloText()
                UserImage()
                UserNameTextField(username: $username)
                SecuryPassword(password: $password)
                if autedDidFail {
                    Text("Information not correct")
                        .foregroundColor(.red).offset(y: -10)
                        
                }
                
                Button(action: {
                    if self.username == usernameRoot && self.password == passwordRoot {
                        autedDidFail = false
                        autedDidSuccess = true } else {
                        autedDidSuccess = false
                        autedDidFail = true
                    }
                }){
                LoginButton()
                }
            }
            .padding()
            if autedDidSuccess {
                Text("Loggin successful!")
                    .font(.headline)
                    .frame(width: 250, height: 50)
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(20.0, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .animation(Animation.default)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct HelloText: View {
    var body: some View {
        Text("Hello, you!")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("defaultUser")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}

struct LoginButton: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 230, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}

struct UserNameTextField: View {
    @Binding var username: String
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            .autocapitalization(.none)
    }
}

struct SecuryPassword: View {
    @Binding var password: String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}
