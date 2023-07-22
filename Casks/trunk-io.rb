cask "trunk-io" do
  version "1.2.5"
  sha256 "d754e4f5fb7005a52e6cd2326012fb338f086121904c07495aab26fac24c0db3"

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
