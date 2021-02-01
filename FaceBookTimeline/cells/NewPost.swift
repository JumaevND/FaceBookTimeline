//
//  NewPost.swift
//  FaceBookTimeline
//
//  Created by Nuriddin Jumaev on 2/1/21.
//

import SwiftUI

struct NewPost: View {
    var body: some View {
        VStack{
            
            // header
            HStack{
                ZStack(alignment: .bottomTrailing){
                    Image("IT_park")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                        .overlay(RoundedRectangle(cornerRadius: 150).stroke(Color.gray, lineWidth: 1))

                }
                
                VStack(alignment: .leading, spacing: 5){
                    Text("IT-Park").fontWeight(.bold)
                    HStack{
                        Text("1d")
                        Image("icon_public").resizable().frame(width: 20, height: 20)
                    }
                }
                Spacer()
                Image("icon_more")
            }.padding(.leading,10).padding(.trailing,10).padding(.top,10)
           
            //Text
            HStack() {
                Text("!?")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                Text("IT sohasida frilansermisiz?")
            }
            .padding()
            .frame(maxWidth:.infinity, alignment: .leading)
            
            //Text2
            HStack {
                Text("Unda oxirgi...")
                Text("See More")
                    .foregroundColor(Color.gray)
            }.padding()
            .frame(maxWidth:.infinity, alignment: .leading)
            
            //image
            HStack{
                Image("park_image")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2)
                    .frame(height: 200)
                Image("park_image")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2)
                    .frame(height: 200)
   
            }
            
            //Like
            //like button
            HStack(spacing:3){
                Image("fb_like2")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("5")
                Spacer()
                Text("3 Share")
                    .foregroundColor(.gray)
                    .padding(.trailing,15)
            }
            .padding([.top, .leading, .bottom], 10)
            .frame(maxWidth:.infinity)
            
            HStack{}.frame(height: 1).frame(maxWidth:.infinity).background(Color.gray.opacity(0.3))
                .padding(.horizontal,8)
            
           // Bottom part
            HStack{
                Spacer()
                HStack{
                    Image("like")
                    Text("Like")
                }
                Spacer()
                HStack{
                    Image(systemName: "bubble.left")
                        .frame(width: 24, height: 24)
                    Text("Comment")
                }
                Spacer()
                HStack{
                    Image(systemName: "arrowshape.turn.up.forward")
                        .frame(width: 24, height: 24)
                    Text("Share")
                }
                Spacer()
            }
            .frame(height: 40).padding(.top,5)
            
        }
        
    }
}

struct NewPost_Previews: PreviewProvider {
    static var previews: some View {
        NewPost()
    }
}
