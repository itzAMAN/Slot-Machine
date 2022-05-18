//
//  InfoView.swift
//  Slot Machine
//
//  Created by AMAN SHARMA on 18/05/22.
//

import SwiftUI

struct InfoView: View {
  // MARK: - PROPERTIES
  @Environment(\.presentationMode) var presentationMode
  
  // MARK: - BODY
    var body: some View {
      VStack(alignment: .center, spacing: 10) {
        LogoView()
        
        Spacer()
        
        Form {
          Section(header: Text("About the application")) {
            FormRowView(firstItem: "Application", secondItem: "Slot Machine")
            FormRowView(firstItem: "Platforms", secondItem: "iPhone, iPad, Mac")
            FormRowView(firstItem: "Developer", secondItem: "Dork / Dorky")
            FormRowView(firstItem: "Designer", secondItem: "Aman Sharma")
            FormRowView(firstItem: "Music", secondItem: "Ooku")
            FormRowView(firstItem: "Website", secondItem: "github.com/itzAMAN")
            FormRowView(firstItem: "Copyright", secondItem: "© 2022 All rights reserved.")
            FormRowView(firstItem: "Version", secondItem: "1.0.0")
          } //: SECTION
        } //: FORM
        .font(.system(.body, design: .rounded))
      } //: VSTACK
      .padding(.top, 40)
      .overlay(
        Button(action: {
          audioPlayer?.stop()
          self.presentationMode.wrappedValue.dismiss()
        }) {
          Image(systemName: "xmark.circle")
            .font(.title)
        }
          .padding(.top, 30)
          .padding(.trailing, 20)
          .accentColor(Color.secondary)
        , alignment: .topTrailing
      )
      .onAppear {
        playSound(sound: "background-music", type: "mp3")
      }
    }
}

struct FormRowView: View {
  var firstItem: String
  var secondItem: String
  var body: some View {
    HStack {
      Text(firstItem).foregroundColor(Color.gray)
      Spacer()
      Text(secondItem)
    }
  }
}

  // MARK: - PREVIEW
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

