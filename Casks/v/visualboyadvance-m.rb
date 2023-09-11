cask "visualboyadvance-m" do
  version "2.1.7"
  sha256 "21b785be4b15e5891fdb2b9cd0834e25e854720b296e2c4505b45f0412e2183c"

  url "https://github.com/visualboyadvance-m/visualboyadvance-m/releases/download/v#{version}/visualboyadvance-m-Mac-x86_64.zip",
      verified: "github.com/visualboyadvance-m/visualboyadvance-m/"
  name "Visual Boy Advance - M"
  desc "Game Boy Advance emulator"
  homepage "https://vba-m.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "visualboyadvance-m.app"

  zap trash: [
    "~/Library/Application Support/visualboyadvance-m",
    "~/Library/Preferences/visualboyadvance-m.plist",
  ]
end
