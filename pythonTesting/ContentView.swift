//
//  ContentView.swift
//  pythonTesting
//
//  Created by Seth Lenhof on 3/7/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @State var showResult: Bool = false
    var body: some View{
        VStack{
            Text("\(Bundle.main.path(forResource: "python-stdlib", ofType: nil))")
            Button(action: {
                RunPythonScript()
                showResult.toggle()
            }) {
                Text("Run Python Script")
            }
            if showResult{
                Text(String("\(RunPythonScript())"))
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
