import Foundation

struct Note: Identifiable, Codable {
    let id = UUID()
    var title: String
    var content: String
    var createdAt = Date()
    var updatedAt = Date()
    var tags: [String] = []
}
