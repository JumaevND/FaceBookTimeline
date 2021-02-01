//
//  CreateRoom.swift
//  FaceBookTimeline
//
//  Created by Nuriddin Jumaev on 2/1/21.
//

import SwiftUI

struct CreateRoom: View {
    var body: some View {
        HStack(spacing: 5) {
            Image("icon_videoCall")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            VStack {
                Text("Create")
                    .fontWeight(.medium)
                    .foregroundColor(Color.blue.opacity(0.9))
                    
                Text("Room")
                    .fontWeight(.medium)
                    .foregroundColor(Color.blue.opacity(0.9))
            }
        }
        .padding(.horizontal, 17)
        .padding(.vertical,7)
        .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.blue.opacity(0.2), lineWidth: 2))
    }
}

struct CreateRoom_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoom()
            .previewLayout(.sizeThatFits)

    }
}
