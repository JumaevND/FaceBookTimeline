//
//  StoryItem.swift
//  FaceBookTimeline
//
//  Created by Nuriddin Jumaev on 2/1/21.
//

import SwiftUI

struct StoryItem: View {
    //MARK: - Properties
    
    
    
    
    //MARK: - Body
    var body: some View {
        ZStack{
            Image("story").resizable().frame(width: 150, height: 250)
                .scaledToFit()
            VStack(alignment: .leading){
                Image("profile").resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.blue, lineWidth: 5))
                Spacer()
                    Text("Jumaev").fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .font(.system(size: 17))
                    Text("Nuriddin").fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .font(.system(size: 17))
            }
            .padding()
            .offset(x:-25)

        }
        .frame(width: 150, height: 250).cornerRadius(15)
        
    }
}

//MARK: - Preview
struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
