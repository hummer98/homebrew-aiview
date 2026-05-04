cask "aiview" do
  version "0.4.2"
  sha256 "2d47889767f94301bce1818cbe7b867904aece8a71435a68856c2977fd4af14b"

  url "https://github.com/hummer98/AIview/releases/download/v#{version}/AIview-#{version}.zip"
  name "AIview"
  desc "High-performance image viewer for macOS optimized for large image collections"
  homepage "https://github.com/hummer98/AIview"

  depends_on macos: ">= :sonoma"

  app "AIview.app"

  zap trash: [
    "~/Library/Application Support/AIview",
    "~/Library/Caches/com.aiview.app",
    "~/Library/HTTPStorages/com.aiview.app",
    "~/Library/Preferences/com.aiview.app.plist",
    "~/Library/Saved Application State/com.aiview.app.savedState",
    "~/Library/WebKit/com.aiview.app",
  ]
end
