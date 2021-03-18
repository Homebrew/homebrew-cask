cask "terminus" do
  version "1.0.135"

  if Hardware::CPU.intel?
    sha256 "10d007984e6a96f77f76a2ae06903ac8790ea5db43e6419772f11cf8c3273356"

    url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos-x86_64.zip",
        verified: "github.com/Eugeny/terminus/"
  else
    sha256 "d4ebb75e58dfa604e4090484f0f8bc26ce1d6c0c9ea991d41615ecd73eca7307"

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
