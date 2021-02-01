//
//  CreateStory.swift
//  FaceBookTimeline
//
//  Created by Nuriddin Jumaev on 2/1/21.
//

import SwiftUI

struct CreateStory: View {
    var body: some View {

         //1. Geometry Reader
        GeometryReader { geo in
            
            //2. Main Content
            VStack(alignment: .leading){
                ZStack(alignment:.bottom) {
                    Image("story1")
                         .resizable()
                        .aspectRatio(contentMode:.fill)
                        .frame(width: geo.size.width, height: geo.size.height * 0.70)
                        .clipped()
                        Image("icon_add")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                            .background(Color(#colorLiteral(red: 0.9332473278, green: 0.9333537221, blue: 0.9375218153, alpha: 1)))
                            .cornerRadius(20)
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.clear))
                            .offset(y:20)
                    
                        
                }
                    //Text
                    Text("Create a \nStory").fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth:.infinity)
                    
                }
        }
            .frame(width: 150, height: 250)
            .background(Color.gray.opacity(0.15))
            .cornerRadius(15)
        

    }
}

struct CreateStory_Previews: PreviewProvider {
    static var previews: some View {
        CreateStory()
    }
}
