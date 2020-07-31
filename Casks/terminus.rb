cask "terminus" do
  version "1.0.115"
  sha256 "723a1ef6756adbba6dcd86687415c902ba263a75d7d817980800832186cfa849"

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
