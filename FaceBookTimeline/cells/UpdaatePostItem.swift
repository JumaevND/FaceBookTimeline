//
//  UpdaatePostItem.swift
//  FaceBookTimeline
//
//  Created by Nuriddin Jumaev on 2/1/21.
//

import SwiftUI

struct UpdaatePostItem: View {
    //MARK: - Properties

    
    //MARK: - Body
    var body: some View {
        VStack{
            // header
            HStack(alignment:.top){
                    Image("profile").resizable().frame(width: 50, height: 50).cornerRadius(25)
                
                VStack(alignment: .leading, spacing: 5){
                    HStack {
                        Text("Nuriddin Jumaev ")
                            .fontWeight(.bold)
                            .font(.system(size: 14))
                       +  Text("updated his profile picture")
                            .font(.system(size: 14))
                    }
                    
                    
                    HStack{
                        Text("1d")
                        Image("icon_public").resizable().frame(width: 20, height: 20)
                    }
                }
                .frame(maxWidth:.infinity)
                .frame(height: 60)
                
                Spacer()
                Image("icon_more")
            }.padding(.leading,10).padding(.trailing,10).padding(.top,10)
            
            //image
            ZStack {
                Rectangle()
                    .frame(width: 300,height: 300)
                    .cornerRadius(160)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 150).stroke(Color.gray, lineWidth: 1))
                Image("story")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 280,height: 280)
                    .clipShape(Circle())
            }
            
            //like button
            HStack(spacing:3){
                Image("fb_like2")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("10")
                Spacer()
                
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
            
            //line
            HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5))
            
        }
    }
}

//MARK: - Preview
struct UpdaatePostItem_Previews: PreviewProvider {
    static var previews: some View {
        UpdaatePostItem()
            .previewLayout(.sizeThatFits)
    }
}
