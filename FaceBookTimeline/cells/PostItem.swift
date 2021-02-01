//
//  PostItem.swift
//  FaceBookTimeline
//
//  Created by Nuriddin Jumaev on 2/1/21.
//

import SwiftUI

struct PostItem: View {
    
    //MARK: - Properties
    var img_url = "story1"
    
    //MARK: - Body
    var body: some View {
        VStack{
            // header
            HStack{
                ZStack(alignment: .bottomTrailing){
                    Image("profile").resizable().frame(width: 50, height: 50).cornerRadius(25)
                    ZStack{
                        Circle().frame(width: 22, height: 22).foregroundColor(.white)
                        Circle().frame(width: 16, height: 16).foregroundColor(.green)
                    }
                }
                
                VStack(alignment: .leading, spacing: 5){
                    Text("Nuriddin").fontWeight(.bold)
                    HStack{
                        Text("26m")
                        Image("icon_public").resizable().frame(width: 20, height: 20)
                    }
                }
                Spacer()
                Image("icon_more")
            }.padding(.leading,10).padding(.trailing,10).padding(.top,10)
            
            // image
            Image(img_url).resizable().scaledToFit()
            
            // like, love, counts for comment and share
            HStack(spacing: 5){
                HStack(spacing: -5){
                    Image("fb_like2")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Image("fb_heart").resizable().frame(width: 20, height: 20)
                }
                Text("8.4K")
                Spacer()
                Text("240 Comments")
                Text("54 Shares")
            }.padding(.leading,10).padding(.trailing,10).padding(.top,10)
            
            HStack{}.frame(height: 0.5).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5)).padding(.top,5)
            
            HStack{
                Spacer()
                HStack{
                    Image("icon_like")
                    Text("Like")
                }
                Spacer()
                HStack{
                    Image("icon_comment")
                    Text("Comment")
                }
                Spacer()
                HStack{
                    Image("icon_reply")
                    Text("Share")
                }
                Spacer()
            }.frame(height: 40).padding(.top,5)
            
            HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5))
            
        }
        
    }
}

//MARK: - Properties
struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
