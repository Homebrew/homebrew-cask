cask "terminus" do
  version "1.0.126"

  if Hardware::CPU.intel?
    sha256 "ed7949cacb7562bae039ff0d2112a9b7e483d6afdbc9212040615b00146ad15e"
    url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos-x86_64.zip",
        verified: "github.com/Eugeny/terminus/"
  else
    sha256 "695606e19be5f58c17086b43dfb9b2036ea882a451142e17798a4077199bbbea"
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
