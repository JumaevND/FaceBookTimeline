//
//  HomeScreen.swift
//  FaceBookTimeline
//
//  Created by Nuriddin Jumaev on 2/1/21.
//

import SwiftUI

struct HomeScreen: View {
    //MARK: - Properties
    
    
    
    
    //MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView{
                // live, photo, room
                VStack{
                    HStack{
                        Image("profile").resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        Text("What`s on your mind?").font(.system(size: 17))
                    }.frame(height: 90)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading, 10).padding(.trailing, 10)
                    
                    HStack{}.frame(height: 1).frame(maxWidth:.infinity).background(Color.gray.opacity(0.3))
                    
                    HStack{
                        Spacer()
                        HStack{
                            Image("icon_video")
                            Text("Live")
                        }
                        Spacer()
                        HStack{
                            Image("icon_photo")
                            Text("Photo")
                        }
                        Spacer()
                        HStack{
                            Image("icon_videoCall")
                            Text("Room")
                        }
                        Spacer()
                    }.frame(height: 50)
                }

                // create room
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 20){
                                CreateRoom()
                                    .padding(.leading,2)
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                            }
                        }
                    }.frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .padding(.leading, 10)
                }
                
                // create story
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                CreateStory()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                            }
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                }
                
                // post items
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    PostItem(img_url: "story1")
                    PostItem(img_url: "story2")
                    UpdaatePostItem()
                    NewPost()
                }
                
                
            }
            .navigationBarItems(
                leading: Text("facebook")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .foregroundColor(.blue)
                ,
                trailing: HStack{
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image("ic_search")
                    }
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image("icon_bolt")
                    }
      
                })
            .navigationBarTitle("",displayMode: .inline)
        }
    }
}


//MARK: - Preview
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
