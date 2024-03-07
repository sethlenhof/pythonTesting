//
//  runPython.swift
//  pythonTesting
//
//  Created by Seth Lenhof on 3/7/24.
//

import Foundation
import PythonKit
import Python


func RunPythonScript() -> PythonObject{
    if let stdLibPath = Bundle.main.path(forResource: "python-stdlib", ofType: nil),
       let libDynloadPath = Bundle.main.path(forResource: "python-stdlib/lib-dynload", ofType: nil){
        let mergedPaths = "\(stdLibPath):\(libDynloadPath)"
        setenv("PYTHONHOME", mergedPaths, 1)
        setenv("PYTHONPATH", mergedPaths, 1)
    }
    Py_Initialize()
    
    let sys = Python.import("sys")
    sys.path.append("/Users/sethlenhof/Code/pythonTesting/pythonTesting/")
    let file = Python.import("pythonScript")
    
    let response = file.helloWorld()
    print(response)
    return response
}

