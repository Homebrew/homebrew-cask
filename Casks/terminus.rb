cask "terminus" do
  version "1.0.117"
  sha256 "d7a0fbd2e152e15f75330711fd9156fcfac3252ceb608b7ff55563b66f07aeec"

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
