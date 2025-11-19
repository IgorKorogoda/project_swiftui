import SwiftUI

struct SearchResultsUI: View {
    
    private let historyData: [String] = [
        "My search history",
        "My favorite recipes",
        "Easy Mexican Casserole",
        "Thai Chicken Balls",
    ]
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                    header
                VStack {
                    Spacer().frame(height: 290)
                    search
                }
            }
            .ignoresSafeArea()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    backButton
                }
                ToolbarItem(placement: .topBarTrailing) {
                    helpToTip
                }
            }
        }
    }
    
    
    // MARK: - Search
    var search: some View {
        VStack {
            ForEach(historyData.indices, id: \.self) { index in
                cell(title: historyData[index], isDividerExist: historyData.count - 1 != index)
            }
            Spacer()
        }
        .background(
            Color(.systemBackground)
                .clipShape(RoundedCorner(radius: 52, corners: [.topLeft, .topRight]))
        )
    }
    
    func cell(title: String, isDividerExist: Bool) -> some View {
        VStack {
            HStack {
                Text(title)
                    .font(.callout)
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: "arrow.right")
            }
            .padding(.vertical, 17)
            
            Divider()
                .frame(height: 0.5)
                .opacity(isDividerExist ? 1 : 0)
        }
        .padding(.horizontal, 34)
        .foregroundStyle(.gray)
    }
}

// MARK: - Header
private extension SearchResultsUI {
    
    var header: some View {
        Image("search_bg")
            .resizable()
            .scaledToFill()
            .frame(height: 320)
            .clipped()
    }
}

// MARK: - Toolbar
private extension SearchResultsUI {
    
    var backButton: some View {
        Button { } label: {
            Image(systemName: "arrow.backward")
                .foregroundStyle(.white)
        }
    }
    
    var helpToTip: some View {
        HStack {
            Text("Swipe to search by ingredients")
                .font(.caption)
            Image(systemName: "chevron.forward")
                .resizable()
                .scaledToFit()
                .frame(width: 12, height: 12)
        }
        .padding(.horizontal, 5)
    }
}

#Preview {
    SearchResultsUI()
}



// extension для скругления углов, нужен для того, чтобы SwiftUI скруглил только определённые стороны
// MARK: - Corner Extension
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
