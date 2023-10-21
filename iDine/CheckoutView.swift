//
//  CheckoutView.swift
//  iDine
//
//  Created by Zeljko Lucic on 8.10.23..
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    @State private var paymentType = "Cash"
    
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CheckoutView()
        .environmentObject(Order())
}
