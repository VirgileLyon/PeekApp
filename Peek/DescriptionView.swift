//
//  DescriptionView.swift
//  Peek
//
//  Created by Quentin Durand on 04/02/2021.
//

import SwiftUI

struct DescriptionView: View {
    
    var myDescription: Description
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(myDescription: DESCRIPTION_TEST)
    }
}
