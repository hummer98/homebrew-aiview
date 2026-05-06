cask "aiview" do
  version "0.4.4"
  sha256 "9283425db48dcf79013f866fb9c11ef3f68c2cb8ec20a5b5f4ff63ffe23daafd"

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
