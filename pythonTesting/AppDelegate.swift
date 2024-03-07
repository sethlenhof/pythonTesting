//
//  AppDelegate.swift
//  pythonTesting
//
//  Created by Seth Lenhof on 3/7/24.
//

import UIKit
import PythonKit
import Python

class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Setup Python environment
        guard let stdLibPath = Bundle.main.path(forResource: "python-stdlib", ofType: nil),
              let libDynloadPath = Bundle.main.path(forResource: "python-stdlib/lib-dynload", ofType: nil) else {
            fatalError("Unable to find Python standard library")
        }
        setenv("PYTHONHOME", stdLibPath, 1)
        setenv("PYTHONPATH", "\(stdLibPath):\(libDynloadPath)", 1)
        
        Py_Initialize()
        // we now have a Python interpreter ready to be used
        // Now PythonKit is ready to be used
        // Example of using PythonKit
        let sys = Python.import("sys")
        print(sys.path)

        return true
    }
}
