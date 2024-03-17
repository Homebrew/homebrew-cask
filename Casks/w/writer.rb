cask "writer" do
  version "2.1.1"
  sha256 "ca71fad8d767f510ad3be08bacc4a128782fb93f8cf09b797f2b5d531750cbe1"

  url "https://github.com/HendrikNoeller/Writer/releases/download/#{version}/Writer.app.zip"
  name "Writer"
  desc "Screenwriting app based on the fountain language"
  homepage "https://github.com/HendrikNoeller/Writer"

  app "Writer.app"

  zap trash: [
    "~/Library/Application Support/Writer",
    "~/Library/Preferences/de.HendrikNoeller.Writer.plist",
  ]
end
