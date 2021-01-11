cask "terminus" do
  version "1.0.125"

  if Hardware::CPU.intel?
    sha256 "c00a68942c786e747f3474339685284ebc86463b369eb0af33d4a6962e4abff2"
    url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos-x86_64.zip",
        verified: "github.com/Eugeny/terminus/"
  else
    sha256 "188bc5de667c673186dabfc714db3a20cfe071094c83205aeb094acbc174fd9d"
    url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos-arm64.zip",
        verified: "github.com/Eugeny/terminus/"
  end

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
