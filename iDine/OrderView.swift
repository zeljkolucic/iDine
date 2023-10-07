//
//  OrderView.swift
//  iDine
//
//  Created by Zeljko Lucic on 8.10.23..
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                Section {
                    NavigationLink("Place Order") {
                        Text("Check out")
                    }
                }
            }
        }
    }
}

#Preview {
    OrderView()
        .environmentObject(Order())
}