cask "aiview" do
  version "0.4.5"
  sha256 "718686ba29b0c8f8de0116cee26841e39791d4b06a8389fa501ee44b52c9403e"

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
