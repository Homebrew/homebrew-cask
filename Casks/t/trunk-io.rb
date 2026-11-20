cask "trunk-io" do
  version "1.3.5"
  sha256 "700f8bbedfd226595999ea2202b9a7af75ba8398dd711f5f159f5bbba6cbf322"

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
