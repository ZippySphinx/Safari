//
//  InsetGalleryView.swift
//  Safari
//
//  Created by Shubham Kumar on 24/01/22.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK: PROPERTIES
    let animal:Animal
    
    //MARK: BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height:200)
                    .cornerRadius(12)
                }//:ForEach
            }//:HStack
        }//:ScrollView
    }//:Body
}

//MARK: PREVIEW
struct InsetGalleryView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals[5])
            .previewLayout(.sizeThatFits)
    }
}
