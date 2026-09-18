cask "hotplate" do
  version "1.0.0"
  sha256 "faae398e28ce67918f77bcaadae6d7881eae2cba822354b2ee64ebbcd060c8b1"

  url "https://github.com/hrvojeBencik/hotplate/releases/download/v#{version}/Hotplate-#{version}.dmg"
  name "Hotplate"
  desc "Runs Flutter apps with hot reload on save, from the menu bar; works with any editor"
  homepage "https://github.com/hrvojeBencik/hotplate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Hotplate.app"

  zap trash: [
    "~/Library/Preferences/com.hrvojebencik.hotplate.plist",
  ]
end
