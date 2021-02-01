//
//  RoomItem.swift
//  FaceBookTimeline
//
//  Created by Nuriddin Jumaev on 2/1/21.
//

import SwiftUI

struct RoomItem: View {
    //MARK: - Properties
    
    var isOnline = false

    
    
    //MARK: - Body
    var body: some View {
        
        ZStack(alignment: .bottomTrailing){
            Image("story3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                
                .cornerRadius(30)
            
            if isOnline{
                ZStack{
                    Circle().frame(width: 24, height: 24).foregroundColor(.white)
                    Circle().frame(width: 18, height: 18).foregroundColor(.green)
                }
            }
        }    }
}


//MARK: - Preview
struct RoomItem_Previews: PreviewProvider {
    static var previews: some View {
        RoomItem()
    }
}
