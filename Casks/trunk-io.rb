cask "trunk-io" do
  version "1.2.2"
  sha256 "f80f4552a73117fce38b64060f9d1abd848089be2cabcbba479d18cd16a294c7"

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
