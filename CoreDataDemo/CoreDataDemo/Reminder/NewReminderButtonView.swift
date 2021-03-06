// NewReminderButtonView
//CoreDataDemo
//
//  Created by Abdoulaye Diallo on 12/1/20.
//

import SwiftUI

struct NewReminderButtonView: View {
  @Binding var isShowingCreateModal: Bool
  
  var body: some View {
    Button(action: { self.isShowingCreateModal.toggle() }) {
      Image(systemName: "plus.circle.fill")
        .foregroundColor(.red)
      Text("New Reminder")
        .font(.headline)
        .foregroundColor(.red)
    }.sheet(isPresented: $isShowingCreateModal) {
      CreateReminderView()
    }
  }
}

struct NewReminderButtonView_Previews: PreviewProvider {
  static var previews: some View {
    NewReminderButtonView(isShowingCreateModal: .constant(false))
  }
}
