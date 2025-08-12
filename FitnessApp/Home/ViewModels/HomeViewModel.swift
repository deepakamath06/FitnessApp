//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Deepa Kamath on 8/12/25.
//

import Foundation
class HomeViewModel: ObservableObject{
    var calories: Int = 123
    var active: Int = 53
    var stand: Int = 8
    var mockWorkouts = [
        Workout(id:0, title: "Running",image: "figure.run", tintcolor: .green, duration: "23 min",date:" Aug 3", calories: "341 Kcal"),
        Workout(id:1, title: "Strength Training",image: "figure.run", tintcolor: .red, duration: "23 min",date:" Aug 11", calories: "341 Kcal"),
        Workout(id:2, title: "Walk",image: "figure.walk", tintcolor: .blue, duration: "23 min",date:" Aug 17", calories: "341 Kcal"),
        Workout(id:3, title: "Dancing",image: "figure.dance", tintcolor: .yellow, duration: "23 min",date:" Aug 18", calories: "301 Kcal")
    ]
    
    
    var mockActivities = [
        Activity(
            id: 0,
            title: "Todays Steps",
            subtitle: "Goal 10,000",
            image: "figure.walk",
            tintColor: .green,
            amount: "6,112"
        ),
        Activity(
            id: 1,
            title: "Todays Steps",
            subtitle: "Goal 10,000",
            image: "figure.walk",
            tintColor: .red,
            amount: "6,112"
        ),
        Activity(
            id: 2,
            title: "Todays Steps",
            subtitle: "Goal 10,000",
            image: "figure.walk",
            tintColor: .blue,
            amount: "6,112"
        ),
        Activity(
            id: 3,
            title: "Todays Steps",
            subtitle: "Goal 10,000",
            image: "figure.walk",
            tintColor: .yellow,
            amount: "6,112"
        )
        
        
    
    ]
}
