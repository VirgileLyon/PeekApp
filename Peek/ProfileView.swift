//
//  ProfileView.swift
//  Peek
//
//  Created by Quentin Durand on 04/02/2021.
//

import SwiftUI

struct ProfileView: View {
    
    var myUser: User
    
    var body: some View {
        VStack{
            VStack {
                Image(myUser.userImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 200, height: 200, alignment: .center)
                Text(myUser.userName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            Spacer()
            VStack {
                Spacer()
                HStack{
                    Text("Stream depuis")
                        .fontWeight(.bold)
                    Spacer()
                    Text(myUser.userPlatform)
                }
                .padding()
                Spacer()
                HStack{
                    Text("Inscrit(e) depuis le")
                        .fontWeight(.bold)
                    Spacer()
                    Text(myUser.inscriptionDate)
                }
                .padding()
                Spacer()
                HStack{
                    Text("Assiduité")
                        .fontWeight(.bold)
                    Spacer()
                    Text(String(myUser.musicsListened))
                }
                .padding()
                Spacer()
            }
            .font(.title3)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Déconnexion")
            })
            .padding()
            .frame(width: 300)
            .foregroundColor(.red)
            .background(Color.white)
            .cornerRadius(10)
            Spacer()
            Spacer()
            Spacer()
        }
        .padding()
        .preferredColorScheme(.dark)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(myUser: FIRST_TEST_USER)
    }
}
