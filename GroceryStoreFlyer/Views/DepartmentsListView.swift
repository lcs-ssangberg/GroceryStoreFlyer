//
//  ContentView.swift
//  GroceryStoreFlyer
//
//  Created by Sebastian on 2025-02-05.
//

import SwiftUI

struct DepartmentsListView: View {
    var body: some View {
        
        NavigationStack {
            List(thisWeeksFlyer.departments) { currentDepartment in
                NavigationLink {
                    DepartmentDetailView(departmentToShow: currentDepartment)
                } label: {
                    Text(currentDepartment.name)
                }

                
            }
            .listStyle(.plain)
            .navigationTitle("Weekly Flyer")
            
        }
    }
}

#Preview {
    DepartmentsListView()
}

