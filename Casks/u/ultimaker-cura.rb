cask "ultimaker-cura" do
  arch arm: "ARM64", intel: "X64"

  on_arm do
    version "5.7.0"
    sha256 "0ad790543d5fccdc73c77667d9b863e9528a0bae72eecf247b4aafe08db2afed"
  end
  on_intel do
    version "5.7.0"
    sha256 "49812b6cec27e360d7be34c32a8d5a251ef637aa8ac1357bde40340072a2f8d8"
  end

  url "https://github.com/Ultimaker/Cura/releases/download/#{version}/Ultimaker-Cura-#{version}-macos-#{arch}.dmg",
      verified: "github.com/Ultimaker/Cura/"
  name "Ultimaker Cura"
  name "Cura"
  desc "3D printer and slicing GUI"
  homepage "https://ultimaker.com/software/ultimaker-cura"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "UltiMaker Cura.app"

  uninstall quit: "nl.ultimaker.cura.dmg"

  zap trash: [
    "~/.cura",
    "~/Library/Application Support/cura",
    "~/Library/Caches/Ultimaker B.V./Ultimaker-Cura",
    "~/Library/Logs/cura",
    "~/Library/Preferences/nl.ultimaker.cura.dmg.plist",
    "~/Library/Preferences/nl.ultimaker.cura.plist",
    "~/Library/Saved Application State/nl.ultimaker.cura.dmg.savedState",
  ]
end
