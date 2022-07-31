//
//  App.swift
//  CSVParser
//
//  Created by Scott Andrew on 7/25/22.
//

import Foundation

@main
struct App {
    static func main() async throws {
        do {
            let parser = CSVParser(url: URL(string: "https://files.zillowstatic.com/research/public_csvs/zhvi/Metro_zhvi_uc_sfrcondo_tier_0.33_0.67_sm_sa_month.csv?t=1659150579")!)
            
            for try await line in parser {
                print("line: \(line.lineNumber)\ndata: \(line.data)")
            }
        } catch {
            print("Error: \(error)")
        }
    }
}
