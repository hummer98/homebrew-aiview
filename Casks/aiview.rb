cask "aiview" do
  version "0.6.0"
  sha256 "59fa3fe103fad77db7ee86efa01f198b400b1d320d6d4a7a0ea8eb1cfd7cbfea"

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
