cask "thorium" do
  version "1.5.0"
  sha256 "6c206707eee3a3749ab7283ef4eeefa97f29c1563890e3eed800fd0a7358c0dc"

  # github.com/edrlab/thorium-reader was verified as official when first introduced to the cask
  url "https://github.com/edrlab/thorium-reader/releases/download/v#{version}/Thorium-#{version}.dmg"
  appcast "https://github.com/edrlab/thorium-reader/releases.atom"
  name "Thorium Reader"
  desc "Epub reader"
  homepage "https://www.edrlab.org/software/thorium-reader/"

  app "Thorium.app"

  zap trash: [
    "~/Library/Application Support/EDRLab.ThoriumReader",
    "~/Library/Preferences/io.github.edrlab.thorium.plist",
  ]
end
