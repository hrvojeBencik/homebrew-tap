cask "hotplate" do
  version "1.1.0"
  sha256 "315c355de6417c4c2373d29bcffc9c739699cd79115469b58032d8a88382a43c"

  url "https://github.com/hrvojeBencik/hotplate/releases/download/v#{version}/Hotplate-#{version}.dmg"
  name "Hotplate"
  desc "Runs Flutter apps with hot reload on save, from the menu bar or terminal"
  homepage "https://github.com/hrvojeBencik/hotplate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Hotplate.app"
  binary "#{appdir}/Hotplate.app/Contents/Helpers/hotplate"

  zap trash: [
    "~/Library/Preferences/com.hrvojebencik.hotplate.plist",
  ]
end
