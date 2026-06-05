cask "aiview" do
  version "0.7.0"
  sha256 "318605a36ba8c924ffd061053acba01dcec18e448627a4a11faaffd44c2484b7"

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
