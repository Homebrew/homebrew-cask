cask "trunk-io" do
  version "1.2.0"
  sha256 "ee117a6ce0f7ff49139a22a7ca1d8c3759caafa3bf1c77b61b5261d78d4b321c"

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
