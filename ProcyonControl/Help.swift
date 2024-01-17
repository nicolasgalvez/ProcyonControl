//
//  Help.swift
//  ProcyonControl
//
//  Created by Nick Galvez on 1/17/24.
//

import SwiftUI

struct Help: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 20
                    ) {

                        Text("Large Title").font(.largeTitle)
                        Text("Title").font(.title)
                        Text("Title2").font(.title2) // available iOS 14
                        Text("Title3").font(.title3) // available iOS 14

                        Divider()

                        Text("Headline").font(.headline)
                        Text("Subheadline").font(.subheadline)
                    }

                    Divider()

                    VStack(alignment: .leading, spacing: 20) {
                        Text("Body").font(.body)  // --> default font
                        Text("Callout").font(.callout)
                        Text("Footnote").font(.footnote)
                        Text("Caption").font(.caption)
                        Text("Caption2").font(.caption2) // available iOS 14
                    }
                }
    }
}

#Preview {
    Help()
}
