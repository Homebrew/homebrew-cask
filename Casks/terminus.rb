cask "terminus" do
  version "1.0.139"

  if Hardware::CPU.intel?
    sha256 "0616706e5e4324200b269d9434b30b2819b2e36683b71c639dd9280b7b9a5beb"

    url "https://github.com/Eugeny/terminus/releases/download/v#{version}/terminus-#{version}-macos-x86_64.zip",
        verified: "github.com/Eugeny/terminus/"
  else
    sha256 "dc84421cb3d7301b30d9d78d0254a3eafd6058947e4c7be6f5a3a8137f6d01e9"

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
