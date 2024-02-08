cask "ultimaker-cura" do
  arch arm: "ARM64", intel: "X64"

  on_arm do
    version "5.6.0"
    sha256 "c046ffa25acbede20936f289d63fbe8ad034901a049173acd713efdc31e273ef"
  end
  on_intel do
    version "5.6.0"
    sha256 "11a32451595639ddfb9a67d22b4c6efd8f1daad0cc731b1d9e0c357b74424aee"
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
