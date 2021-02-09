cask "terminus" do
  version "1.0.130"

  if Hardware::CPU.intel?
    sha256 "256152504272a57825e8945648e0c3e9b7569513d6f5369b5729e2ae9c33f24a"

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
