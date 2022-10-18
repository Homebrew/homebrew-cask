cask "trunk-io" do
  version "1.2.1"
  sha256 "19a2dc0fa722bc21b27b0124dd9d453fd03d41a7954c80d31879c74f5dbd4cb1"

  url "https://trunk.io/releases/launcher/#{version}/trunk"
  name "Trunk Launcher"
  desc "Developer experience toolkit used to check, test, merge, and monitor code"
  homepage "https://trunk.io/"

  livecheck do
    url "https://trunk.io/releases/trunk"
    regex(/TRUNK_LAUNCHER_VERSION="(\d+(?:\.\d+)+)"/i)
  end

  binary "trunk"

  zap trash: [
    "~/.cache/trunk",
  ]
end
