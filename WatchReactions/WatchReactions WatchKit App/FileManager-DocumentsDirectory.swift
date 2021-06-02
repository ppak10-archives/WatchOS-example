//
//  FileManager-DocumentsDirectory.swift
//  WatchReactions WatchKit Extension
//
//  Created by Peter Pak on 6/1/21.
//

import Foundation

extension FileManager {
    func getDocumentsDirectory() -> URL {
        let paths = urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
