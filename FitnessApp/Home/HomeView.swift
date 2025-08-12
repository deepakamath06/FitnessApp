//
//  HomeView.swift
//  FitnessApp
//
//  Created by Deepa Kamath on 8/4/25.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 53
    @State var stand: Int = 8
    
    var mockActivities = [
        Activity(
            id: 0,
            title: "Todays Steps",
            subtitle: "Goal 10,000",
            image: "figure.walk",
            tintColor: Color.green,
            amount: "6,112"
        ),
        Activity(
            id: 1,
            title: "Todays Steps",
            subtitle: "Goal 10,000",
            image: "figure.walk",
            tintColor: Color.red,
            amount: "6,112"
        ),
        Activity(
            id: 2,
            title: "Todays Steps",
            subtitle: "Goal 10,000",
            image: "figure.walk",
            tintColor: Color.blue,
            amount: "6,112"
        ),
        Activity(
            id: 3,
            title: "Todays Steps",
            subtitle: "Goal 10,000",
            image: "figure.walk",
            tintColor: Color.yellow,
            amount: "6,112"
        )
        
        
    
    ]
    var body: some View {
        ScrollView(showsIndicators: false){
            
            VStack(alignment: .leading ){
              
                Text("Welcome")
                    .font(.largeTitle)
                    .padding(8)
                HStack{
                    Spacer()
                    VStack{
                        VStack(alignment: .leading, spacing: 8){
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.red)
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        VStack(alignment: .leading, spacing: 8){
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.green)
                            Text("53 mins")
                                .bold()
                        }
                        .padding(.bottom)
                        VStack(alignment: .leading, spacing: 8){
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                            Text("8 hrs")
                                .bold()
                        }
                    }
                    Spacer()
                    
                    
                    ZStack{
                        ProgressCircleView(progress: $calories,goal: 600, color: .red)
                        ProgressCircleView(progress: $active,goal: 60, color: .green)
                            .padding(.all, 20)
                        ProgressCircleView(progress: $stand,goal: 12, color: .blue)
                            .padding(.all, 40)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .padding()
                
                
                HStack{
                    Text("Fitness Activity")
                        .font(.title2)
                    Spacer()
                    Button{
                        print("show more")
                    }label: {
                        Text("Show more")
                            .padding(.all, 10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(20)
                    }
                    
                }
                .padding(.horizontal)
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)){
                    ForEach(mockActivities, id: \.id) { activity in
                    ActivityCard(activity: activity)
                }
                }
            }
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
