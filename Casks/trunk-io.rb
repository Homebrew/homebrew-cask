cask "trunk-io" do
  version "1.1.1"
  sha256 "4c6dbeb4c3d88a8cab88f668e8a3a5904b650893ab77782e09b9ff65d8865f79"

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
