cask "aiview" do
  version "0.11.0"
  sha256 "6ce6048571f009231eabedb8cd80f4ea4f70dba439378eb269e58d240f32f4d8"

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
