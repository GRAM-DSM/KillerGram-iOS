import SwiftUI
import DesignSystem

struct TypograpyDemoView: View {
    let fonts: [(String, [KGFontStyle])] = [
        ("h", [
            .h1,
            .h2,
            .h3
        ]),
        ("m", [
            .m1,
            .m2,
            .m3
        ]),
        ("Label", [
            .label
        ])
    ]
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(fonts, id: \.0) { proto in
                    Section {
                        Text(proto.0)
                            .kgFont(.h1, weight: .semiBold)
                    }

                    VStack(alignment: .leading) {
                        ForEach(proto.1, id: \.hashValue) { item in
                            Text("SampleText")
                                .kgFont(item, weight: .regular)

                            Text("SampleText")
                                .kgFont(item, weight: .semiBold)
                        }
                    }
                    .padding(.vertical, 5)
                }
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    TypograpyDemoView()
}
