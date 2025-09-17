cask "vibemate" do
  version "2.2.9"

#arch arm: "arm64", intel: "x64"
  on_arm do
    sha256 "fbc4b4d63b1f5f45bbda925e7a120482c9ba44d6ea0c11094f889229130d7747"
    url "https://cdn.lovense.com/files/vibemate/VibeMate-#{version}-arm64.dmg",
        verified: "cdn.lovense.com/files/vibemate/"
  end

  on_intel do
  sha256 "ad6368cba70abb99425f692ffca57f341ced06c48a0ca97984d9b52060c651db"
  url "https://cdn.lovense.com/files/vibemate/VibeMate-#{version}-x64.dmg",
       verified: "cdn.lovense.com/files/vibemate/"
  end 

  name "VibeMate"
  desc "Private AI-Powered Browser"
  homepage "https://www.vibemate.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "VibeMate.app"

  zap trash: [
    "~/Library/Application Support/com.electron.vibemate",
    "~/Library/Application Support/VibeMate",
    "~/Library/Caches/com.electron.vibemate",
    "~/Library/Caches/com.electron.vibemate.ShipIt",
    "~/Library/DoNotDisturb/DB/IconCache/com.lovense.vibemate*",
    "~/Library/HTTPStorages/com.electron.vibemate",
    "~/Library/Preferences/ByHost/com.electron.vibemate.ShipIt.*.plist",
    "~/Library/Preferences/com.electron.vibemate.plist",
    "~/Library/Saved Application State/com.electron.vibemate.savedState",
    "~/Library/WebKit/com.electron.vibemate"
  ]
end
