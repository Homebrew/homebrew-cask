cask "visualboyadvance-m" do
  version "2.1.4"
  sha256 "9127149a452b6e67280c99eb133480fc22095a2ceafdb049d1df9324c35d9197"

  url "https://github.com/visualboyadvance-m/visualboyadvance-m/releases/download/v#{version}/visualboyadvance-m-Mac-64bit.zip",
      verified: "github.com/visualboyadvance-m/visualboyadvance-m/"
  name "Visual Boy Advance - M"
  homepage "https://vba-m.com/"

  app "visualboyadvance-m.app"

  zap trash: [
    "~/Library/Application Support/visualboyadvance-m",
    "~/Library/Preferences/visualboyadvance-m.plist",
  ]
end
