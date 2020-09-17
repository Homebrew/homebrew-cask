cask "terminus" do
  version "1.0.120"
  sha256 "b42cdffa23c9a4badee2dccb691ee4ccf23c2cc9aa00fcf395b58a6f4213d2cc"

  # github.com/Eugeny/terminus/ was verified as official when first introduced to the cask
  url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos.zip"
  appcast "https://github.com/Eugeny/terminus/releases.atom"
  name "Terminus"
  desc "Terminal for a more modern age"
  homepage "https://eugeny.github.io/terminus/"

  app "Terminus.app"

  zap trash: [
    "~/Library/Application Support/terminus",
    "~/Library/Preferences/org.terminus.helper.plist",
    "~/Library/Preferences/org.terminus.plist",
    "~/Library/Saved Application State/org.terminus.savedState",
  ]
end
