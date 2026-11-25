cask "vamiga" do
  version "5.1"
  sha256 "17a2742323501185db447b26737ce0ede9f9bb6b13c81ed5cb935140a98561ff"

  url "https://github.com/dirkwhoffmann/vAmiga/releases/download/v#{version}/vAmiga.app.zip"
  name "vAmiga"
  desc "Amiga 500, 1000, 2000 emulator"
  homepage "https://dirkwhoffmann.github.io/vAmiga"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "vAmiga.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dirkwhoffmann.vamiga.sfl*",
    "~/Library/Application Support/vAmiga",
    "~/Library/Preferences/dirkwhoffmann.vAmiga.plist",
  ]
end
