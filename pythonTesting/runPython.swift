//
//  runPython.swift
//  pythonTesting
//
//  Created by Seth Lenhof on 3/7/24.
//

import Foundation
import PythonKit



func RunPythonScript() -> PythonObject{
    let sys = Python.import("sys")
    sys.path.append("/Users/sethlenhof/Code/testingPython/testingPython/")
    let file = Python.import("pythonShit")
    
    let response = file.helloWorld
    return response
}

