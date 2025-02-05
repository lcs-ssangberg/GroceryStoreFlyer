//
//  DepartmentDetailView.swift
//  GroceryStoreFlyer
//
//  Created by Sebastian on 2025-02-05.
//

import SwiftUI

struct DepartmentDetailView: View {
        
    //MARK: stored properties
    let departmentToShow: Department
        
        
    //MARK: computed properties
    var body: some View {
        
        List(departmentToShow.items) { currentFoodItem in
            Text(currentFoodItem.name)
        }
        .listStyle(.plain)
        .navigationTitle(departmentToShow.name)
    }
        
}

#Preview {
    DepartmentDetailView(departmentToShow: thisWeeksFlyer.departments[0])
}
