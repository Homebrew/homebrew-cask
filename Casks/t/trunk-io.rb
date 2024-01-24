cask "trunk-io" do
  version "1.3.0"
  sha256 "bfd5896fda08b399366485fcd0bf37751b446ab4e256c5c1b5706d6b4b0ffbe0"

  url "https://trunk.io/releases/launcher/#{version}/trunk"
  name "Trunk Launcher"
  desc "Developer experience toolkit used to check, test, merge, and monitor code"
  homepage "https://trunk.io/"

  livecheck do
    url "https://trunk.io/releases/trunk"
    regex(/TRUNK[._-]LAUNCHER[._-]VERSION="v?(\d+(?:\.\d+)+)"/i)
  end

  binary "trunk"

  zap trash: "~/.cache/trunk"
end
