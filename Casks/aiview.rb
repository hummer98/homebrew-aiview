cask "aiview" do
  version "0.8.0"
  sha256 "da6bf8010ccef42a685ce140c87d267e07f7528e9a660e17e990e867e700245b"

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
