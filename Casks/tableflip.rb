cask "tableflip" do
  version "1.3.0,60"
  sha256 "b947ad412074ee1b4cd5b5982233aed23f84d623bf3b5b79f315677df323615f"

  url "https://update.christiantietze.de/tableflip/v#{version.major}/TableFlip-v#{version.before_comma}.zip",
      verified: "update.christiantietze.de/tableflip/"
  name "TableFlip"
  desc "App to edit markdown files in place"
  homepage "https://tableflipapp.com/"

  livecheck do
    url "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml"
    strategy :sparkle
  end

  auto_updates true

  app "TableFlip.app"
end
