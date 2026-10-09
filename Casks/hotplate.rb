cask "hotplate" do
  version "1.1.1"
  sha256 "4972f96326ee74f083f9753162bcf7773dd5cbb8823ad3a27bac9d91ba495071"

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

  zap trash: "~/Library/Preferences/com.hrvojebencik.hotplate.plist"
end
