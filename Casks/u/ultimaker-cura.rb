cask "ultimaker-cura" do
  arch arm: "ARM64", intel: "X64"

  on_arm do
    version "5.5.0"
    sha256 "ab7f0c87312b59b79cece2894ce84f81c8f874581ad3de7648a0bb08cd832724"
  end
  on_intel do
    version "5.5.0"
    sha256 "a7702ef83ff11a1f625d6e0cf45f8140f1d539628a78a0720a9524976c628871"
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
