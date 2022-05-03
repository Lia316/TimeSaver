//
//  RoadmapView.swift
//  TimeAsst
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

struct MilestoneMock {
    static var m1 = Milestone(labelColor: .pinkLabel, borderColor: .pinkBorder, title: "HIFI 만들기")
    static var m2 = Milestone(labelColor: .yellowLabel, borderColor: .yellowBorder, title: "기본 세팅")
    static var m3 = Milestone(labelColor: .greenLabel, borderColor: .greenBorder, title: "Roadmap 코딩")
    static var m4 = Milestone(labelColor: .lightblueLabel, borderColor: .lightblueBorder, title: "Todo 코딩")
    static var m5 = Milestone(labelColor: .brownLabel, borderColor: .brownBorder, title: "청소하기")
}

struct MilestoneListMock {
    static var list = [MilestoneMock.m1, MilestoneMock.m2,
                       MilestoneMock.m3, MilestoneMock.m4, MilestoneMock.m5]
}

struct Milestone: Hashable {
    var labelColor: Color
    var borderColor: Color
    var title: String
}

extension Color {
    static var redLabel = Color(#colorLiteral(red: 0.937254902, green: 0.462745098, blue: 0.3882352941, alpha: 1))
    static var pinkLabel = Color(#colorLiteral(red: 0.9568627451, green: 0.6705882353, blue: 0.6705882353, alpha: 1))
    static var orangeLabel = Color(#colorLiteral(red: 1, green: 0.6745098039, blue: 0.3411764706, alpha: 1))
    static var yellowLabel = Color(#colorLiteral(red: 0.9725490196, green: 0.831372549, blue: 0.4431372549, alpha: 1))
    static var greenLabel = Color(#colorLiteral(red: 0.7411764706, green: 0.8431372549, blue: 0.5568627451, alpha: 1))
    static var lightblueLabel = Color(#colorLiteral(red: 0.6078431373, green: 0.7882352941, blue: 0.862745098, alpha: 1))
    static var blueLabel = Color(#colorLiteral(red: 0.4549019608, green: 0.5450980392, blue: 0.7098039216, alpha: 1))
    static var purpleLabel = Color(#colorLiteral(red: 0.6666666667, green: 0.568627451, blue: 0.8117647059, alpha: 1))
    static var brownLabel = Color(#colorLiteral(red: 0.7294117647, green: 0.6078431373, blue: 0.4588235294, alpha: 1))
    static var grayLabel = Color(#colorLiteral(red: 0.5529411765, green: 0.5490196078, blue: 0.5647058824, alpha: 1))
    
    static var pinkBorder = Color(#colorLiteral(red: 0.9490196078, green: 0.5137254902, blue: 0.5137254902, alpha: 1))
    static var yellowBorder = Color(#colorLiteral(red: 0.9490196078, green: 0.7529411765, blue: 0.2156862745, alpha: 1))
    static var greenBorder = Color(#colorLiteral(red: 0.6431372549, green: 0.7490196078, blue: 0.4431372549, alpha: 1))
    static var lightblueBorder = Color(#colorLiteral(red: 0.5333333333, green: 0.6941176471, blue: 0.7607843137, alpha: 1))
    static var brownBorder = Color(#colorLiteral(red: 0.6352941176, green: 0.5254901961, blue: 0.3921568627, alpha: 1))
}
