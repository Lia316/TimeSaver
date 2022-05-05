//
//  MilestoneMock.swift
//  TimeSaver
//
//  Created by 리아 on 2022/05/04.
//

import Foundation

struct MilestoneMock {
    static var m1 = Milestone(labelColor: .pinkLabel, borderColor: .pinkBorder, title: "HIFI 만들기")
    static var m2 = Milestone(labelColor: .yellowLabel, borderColor: .yellowBorder, title: "기본 세팅")
    static var m3 = Milestone(labelColor: .greenLabel, borderColor: .greenBorder, title: "Roadmap 코딩")
    static var m4 = Milestone(labelColor: .lightblueLabel, borderColor: .lightblueBorder, title: "Todo 코딩")
    static var m5 = Milestone(labelColor: .brownLabel, borderColor: .brownBorder, title: "청소하기")
    static var m12 = Milestone(labelColor: .pinkLabel, borderColor: .pinkBorder, title: "HIFI 만들기와 긴 버전을 만들기를 해야함")
    static var m22 = Milestone(labelColor: .yellowLabel, borderColor: .yellowBorder, title: "기본 세팅와 긴 버전을 만들기를 해야함")
    static var m32 = Milestone(labelColor: .greenLabel, borderColor: .greenBorder, title: "Roadmap 코딩와 긴 버전을 만들기를 해야함")
    static var m42 = Milestone(labelColor: .lightblueLabel, borderColor: .lightblueBorder, title: "Todo 코딩와 긴 버전을 만들기를 해야함")
    static var m52 = Milestone(labelColor: .brownLabel, borderColor: .brownBorder, title: "청소하기와 긴 버전을 만들기를 해야함")
}

struct MilestoneListMock {
    static var list = [MilestoneMock.m1, MilestoneMock.m2,
                       MilestoneMock.m3, MilestoneMock.m4, MilestoneMock.m5]
    static var longList = [MilestoneMock.m12, MilestoneMock.m22,
                       MilestoneMock.m32, MilestoneMock.m42, MilestoneMock.m52]
    static var mixedList = [MilestoneMock.m1, MilestoneMock.m22,
                       MilestoneMock.m32, MilestoneMock.m4, MilestoneMock.m52]
}
