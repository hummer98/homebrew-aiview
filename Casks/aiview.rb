cask "aiview" do
  version "0.11.1"
  sha256 "0f3ab734e6caeee543b84d7f231c036540783f425133b383939cd07d8ff31e3d"

  url "https://github.com/hummer98/AIview/releases/download/v#{version}/AIview-#{version}.zip"
  name "AIview"
  desc "High-performance image viewer optimized for large image collections"
  homepage "https://github.com/hummer98/AIview"

  depends_on macos: :sonoma

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
