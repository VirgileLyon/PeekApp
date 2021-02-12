//
//  TestModalView.swift
//  Peek
//
//  Created by Quentin Durand on 10/02/2021.
//

import SwiftUI

struct ModalView: View {
    
    var myMusic: Music
    
    @State private var opinionIsPresented = false
    @State private var descriptionIsPresented = false
    
    var body: some View {
        VStack {
            VStack {
                Button("Description") {
                    self.descriptionIsPresented.toggle()
                }
                .sheet(isPresented: $descriptionIsPresented, content: {
                    TabView {
                        DescriptionGaucheView(myMusic: myMusic)
                        OeuvresRelativeView(myRelativeMusic: myMusic.description.relativeMusic)
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                })
                Text("Tap to open!")
            }
            
            Button("Opinion") {
                self.opinionIsPresented.toggle()
            }
            .sheet(isPresented: $opinionIsPresented, content: {
                
                VStack {
                    Spacer()
                    Text("Peek ou pas Peek ?")
                        .font(.system(size: 40))
                        .padding(.top)
                    Spacer()
                    HStack {
                            Button (action: {
                                self.opinionIsPresented.toggle()
                            }, label: {
                                Image(systemName: "heart.slash")
                                    .padding(.trailing)
                                    .foregroundColor(.primary)
                                    .font(.system(size: 130))
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            })
                            Button (action: {
                                self.opinionIsPresented.toggle()
                                self.descriptionIsPresented.toggle()
                                
                            }, label: {
                                Image(systemName: "suit.heart.fill")
                                    .padding(.leading)
                                    .foregroundColor(.red)
                                    .font(.system(size: 130))
                            })
                       
                        }
                    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                }

            })
            Text("Give a thumb up!")
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(myMusic: tierraWackHookers)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
