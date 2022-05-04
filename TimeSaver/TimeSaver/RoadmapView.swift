//
//  RoadmapView.swift
//  TimeSaver
//
//  Created by 리아 on 2022/05/01.
//

import SwiftUI

struct RoadmapView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 80) {
            ForEach(MilestoneListMock.list, id: \.self) { milestone in
                HStack {
                    Circle()
                        .strokeBorder(milestone.borderColor, lineWidth: 3)
                        .background(Circle().foregroundColor(milestone.labelColor))
                        .frame(width: 20, height: 20, alignment: .center)
                    Text(milestone.title)
                }
            }
        }
    }
}

struct RoadmapView_Previews: PreviewProvider {
    static var previews: some View {
        RoadmapView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
