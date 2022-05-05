//
//  RoadmapView.swift
//  TimeSaver
//
//  Created by 리아 on 2022/05/01.
//

import SwiftUI

struct RoadmapView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Text("2022년 5월 6일 (금)")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 30)
                Color.clear
            }
            .background(Color(UIColor.systemGray6))
            .frame(height: 100)
            
            HStack(spacing: 10) {
                VStack(alignment: .leading, spacing: 30) {
                    ForEach(MilestoneListMock.list, id: \.self) { milestone in
                        HStack {
                            Circle()
                                .strokeBorder(milestone.borderColor, lineWidth: 3)
                                .background(Circle().foregroundColor(milestone.labelColor))
                                .frame(width: 20, height: 20, alignment: .center)
                            Text(milestone.title)
                                .frame(width: 110, height: 70, alignment: .leading)
                                .lineLimit(3)
                        }
                    }
                    Spacer()
                }
                .padding(20)
                .padding(.top, 30)
                
                Divider()
                
                ScrollView(.horizontal) {
                    ZStack {
                        LazyHStack(spacing: 50) {
                            ForEach(0..<23) { index in
                                VStack {
                                    Text("\(index+1)")
                                    Rectangle()
                                        .fill(.quaternary)
                                        .frame(width: 0.5)
                                }
                            }
                        }
                        // grid
                        
                    }
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
