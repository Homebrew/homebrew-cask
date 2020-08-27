cask "terminus" do
  version "1.0.119"
  sha256 "340fd6549e1f86171a8822d80a64ff8731a39fd4648027303c4d4c2aff95dbb2"

  # github.com/Eugeny/terminus/ was verified as official when first introduced to the cask
  url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos.zip"
  appcast "https://github.com/Eugeny/terminus/releases.atom"
  name "Terminus"
  homepage "https://eugeny.github.io/terminus/"

  app "Terminus.app"

  zap trash: [
    "~/Library/Application Support/terminus",
    "~/Library/Preferences/org.terminus.helper.plist",
    "~/Library/Preferences/org.terminus.plist",
    "~/Library/Saved Application State/org.terminus.savedState",
  ]
end
