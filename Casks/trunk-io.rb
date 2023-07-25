cask "trunk-io" do
  version "1.2.6"
  sha256 "08b81b3799bcb4504119440b7c9b89384a6dcc260b239189bb87d4aab2a43ba9"

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
