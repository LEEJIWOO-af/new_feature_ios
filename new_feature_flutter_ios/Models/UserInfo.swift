import Foundation

struct UserInfo {
    let id: String
    let name: String
    let email: String
    let profilePictureUrl: String?
    
    func toMap() -> [String: Any?] {
        return [
            "id": id,
            "name": name,
            "email": email,
            "profilePictureUrl": profilePictureUrl
        ]
    }
    
    static func getDummyUserList() -> [UserInfo] {
        return [
            UserInfo(id: "1", name: "John Doe", email: "john.doe@example.com", profilePictureUrl: "https://example.com/profile/john.jpg"),
            UserInfo(id: "2", name: "Jane Smith", email: "jane.smith@example.com", profilePictureUrl: "https://example.com/profile/jane.jpg"),
            UserInfo(id: "3", name: "Kim", email: "chulsoo.kim@example.com", profilePictureUrl: "https://example.com/profile/chulsoo.jpg"),
            UserInfo(id: "4", name: "Lee", email: "younghee.lee@example.com", profilePictureUrl: nil),
            UserInfo(id: "5", name: "Park", email: "jimin.park@example.com", profilePictureUrl: "https://example.com/profile/jimin.jpg")
        ]
    }
}
