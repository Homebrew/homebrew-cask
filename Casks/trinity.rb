cask "trinity" do
  version "1.6.0"
  sha256 "89d591eac25b81bb6a410e7c053b050c77b29769f42908ddda1ea9350adc25cc"

  # github.com/iotaledger/trinity-wallet/ was verified as official when first introduced to the cask
  url "https://github.com/iotaledger/trinity-wallet/releases/download/desktop-#{version}/trinity-desktop-#{version}.dmg"
  appcast "https://github.com/iotaledger/trinity-wallet/releases.atom"
  name "IOTA Trinity Wallet"
  homepage "https://trinity.iota.org/"

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
