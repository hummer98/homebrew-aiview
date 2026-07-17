cask "aiview" do
  version "0.9.0"
  sha256 "b5d576546940584fd7171e4de328fff5835c683fe8940ac517069f611ae672b5"

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
