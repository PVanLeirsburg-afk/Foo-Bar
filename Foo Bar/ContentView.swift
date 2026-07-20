//
//  ContentView.swift
//  Foo Bar
//
//  Created by Pamela VanLeirsburg on 7/20/26.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var display = "0"
    @State private var color = Color.black
    var body: some View {
            VStack {
                ZStack {
                    color.ignoresSafeArea()
                    Text("\(display)")
                        .font(.system(size: 128))
                        .multilineTextAlignment(.center)
                        .preferredColorScheme(.dark)
                        .onTapGesture {
                            counter += 1
                            if counter % 3 != 0 && counter % 5 != 0 {
                                color = Color.black
                                display = String(counter)
                            }
                            else if counter % 3 == 0 && counter % 5 == 0 {
                                color = Color.red
                                display = "Foo Bar"
                            }
                            else if counter % 3 == 0 {
                                color = Color.green
                                display = "Foo"
                            }
                            else  {
                                color = Color.yellow
                                display = "Bar"
                            }
                        }
                }
            }
            .onLongPressGesture {
                counter = 0
                color = Color.black
                display = "0"
            }
        }
    }
    


#Preview {
    ContentView()
}
