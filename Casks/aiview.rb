cask "aiview" do
  version "0.10.1"
  sha256 "e7df6bdd5c314d8ebeb7a9c274d57d51e4f5c75fedb3a36067ee8127d4cc8102"

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
