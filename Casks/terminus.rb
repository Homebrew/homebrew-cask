cask "terminus" do
  version "1.0.129"

  if Hardware::CPU.intel?
    sha256 "69207d63cd4fbad9ec890dfbf4783cd5dbeecdf6c421fba5772841f0548f824f"

    url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos-x86_64.zip",
        verified: "github.com/Eugeny/terminus/"
  else
    sha256 "61a20d0d2ead742435d1c603aedd1d09d5bf3bfc52c142b2e9d91ecf890877f7"

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
