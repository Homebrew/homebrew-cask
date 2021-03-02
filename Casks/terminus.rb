cask "terminus" do
  version "1.0.134"

  if Hardware::CPU.intel?
    sha256 "d2c18d5dbc885d112cb36aa324dfe29c87146f69b5c9869041ef515dab4b2015"

    url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos-x86_64.zip",
        verified: "github.com/Eugeny/terminus/"
  else
    sha256 "449b64f037bf3d4726d583de82aedf09bba3c4b9d2bb7c8c00fe328b4f2185c5"

    url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos-arm64.zip",
        verified: "github.com/Eugeny/terminus/"
  end

  name "Terminus"
  desc "Terminal for a more modern age"
  homepage "https://eugeny.github.io/terminus/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Terminus.app"

  zap trash: [
    "~/Library/Application Support/terminus",
    "~/Library/Preferences/org.terminus.helper.plist",
    "~/Library/Preferences/org.terminus.plist",
    "~/Library/Saved Application State/org.terminus.savedState",
  ]
end
