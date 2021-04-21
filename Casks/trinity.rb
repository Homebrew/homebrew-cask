cask "trinity" do
  version "1.6.1"
  sha256 "1f4c7b31889899472b220a5e986d183efba04e129643ca9e75405fd1e241050e"

  url "https://github.com/iotaledger/trinity-wallet/releases/download/desktop-#{version}/trinity-desktop-#{version}.dmg",
      verified: "github.com/iotaledger/trinity-wallet/"
  name "IOTA Trinity Wallet"
  homepage "https://trinity.iota.org/"

  livecheck do
    url :url
    strategy :git
    regex(/^desktop-(\d+(?:\.\d+)*)$/i)
  end

  app "Trinity.app"

  uninstall quit: "org.iota.trinity"

  zap trash: [
    "~/Library/Application Support/Trinity",
    "~/Library/Logs/Trinity",
    "~/Library/Preferences/org.iota.trinity.helper.plist",
    "~/Library/Preferences/org.iota.trinity.plist",
    "~/Library/Saved Application State/org.iota.trinity.savedState",
  ]
end
