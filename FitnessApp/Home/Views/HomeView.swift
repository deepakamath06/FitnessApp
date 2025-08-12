//
//  HomeView.swift
//  FitnessApp
//
//  Created by Deepa Kamath on 8/4/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewmodel = HomeViewModel()
    var body: some View {
        NavigationStack {
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
                           ProgressCircleView(progress: $viewmodel.calories ,goal: 600, color: .red)
                            ProgressCircleView(progress: $viewmodel.active,goal: 60, color: .green)
                                .padding(.all, 20)
                            ProgressCircleView(progress: $viewmodel.stand,goal: 12, color: .blue)
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
                        ForEach(viewmodel.mockActivities, id: \.id) { activity in
                            ActivityCard(activity: activity)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    
                    HStack{
                        Text("Recent Activity")
                            .font(.title2)
                        Spacer()
                        NavigationLink{
                            EmptyView()
                        }label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                        
                    }
                    
                      LazyVStack{
                          ForEach(viewmodel.mockWorkouts, id: \.id) {
                              workout in
                              WorkoutCard(workout: workout)
                         }
                        }
                      .padding(.bottom)
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
