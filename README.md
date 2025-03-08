# MatchMate - Matrimonial Card Interface (iOS)

## 📌 Project Overview
MatchMate is an iOS matrimonial app that simulates match cards similar to Shaadi.com's format. The app fetches user data from an API, displays it in SwiftUI match cards, and allows users to accept or decline matches. Decisions persist using a local database, ensuring offline functionality.

---

## 🚀 Features
- **API Integration**: Fetches user data from `https://randomuser.me/api/?results=10`.
- **Match Cards (SwiftUI)**: Displays user profiles with images, details, and action buttons (Accept/Decline).
- **Accept/Decline Functionality**: Updates UI & stores choices persistently.
- **Persistent Local Database (Core Data)**: Ensures offline access and syncs data when online.
- **Offline Mode**: Allows users to accept/decline matches even without an internet connection.
- **MVVM/VIPER Architecture**: Clean separation of concerns for maintainability.
- **Best-in-Class Libraries**: Uses Alamofire, SDWebImage, Core Data, Combine/RxSwift.
- **Error Handling**: Manages API failures, database operations, and network issues.
- **Intuitive UI**: Follows Apple's Human Interface Guidelines.

---

## 📱 Screenshots
(TODO: Add app UI screenshots here)

---

## 🛠 Tech Stack & Dependencies
| Component      | Library Used |
|---------------|-------------|
| Networking    | URLSession |
| Local Storage | Core Data   |
| State Management | Combine / RxSwift |
| Architecture  | MVVM |

---

## 🏗 Installation & Setup
### Prerequisites
- macOS with Xcode installed (latest version recommended)
- Swift 5+
- iOS 15+

### Steps to Run
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/MatchMate.git
   cd MatchMate
   ```
2. **Open in Xcode:**
   - Open `MatchMate.xcodeproj` in Xcode.
3. **Install Dependencies (if applicable):**
   ```bash
   pod install  # If using CocoaPods
   ```
4. **Run the App:**
   - Select a simulator or connected device and click ▶️ in Xcode.

---

## 🔄 API Integration
- The app fetches user data from `https://randomuser.me/api/?results=10`.
- JSON response is parsed and mapped to Swift models.
- Data is stored in Core Data for offline access.

---

## 🔧 Offline Mode
- Uses Core Data to cache user profiles.
- Users can interact with match cards even when offline.

---

## 🏗 Design Pattern
- Implements **MVVM** for separation of concerns and maintainability.

---

📜 License
This project is open-source under the MIT License.



