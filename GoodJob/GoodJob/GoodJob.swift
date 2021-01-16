//
//  GoodJob.swift
//  GoodJob
//
//  Created by hoang on 16/01/2021.
//

import Foundation
import UIKit


public class JobDev: NSObject {
    
    static func getBundle() -> Bundle {
        
        let frameworkBundle = Bundle(for: JobDev.self)
        let path = frameworkBundle.resourceURL?.appendingPathComponent("JobDevBundle.bundle")
        let resourcesBundle = Bundle(url: path!)
        return resourcesBundle ?? Bundle.main
        
    }
}
