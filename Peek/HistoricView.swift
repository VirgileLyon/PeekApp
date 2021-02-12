//
//  HistoricView.swift
//  Peek
//
//  Created by Quentin Durand on 04/02/2021.
//

import SwiftUI

struct HistoricView: View {
    
    var myUser: User
    var tabMusic: [Music]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HistoricView_Previews: PreviewProvider {
    static var previews: some View {
        HistoricView(myUser: FIRST_TEST_USER, tabMusic: LIST_TEST_MUSIC)
    }
}
