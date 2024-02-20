cask "yojimbo" do
  version "4.6.3"
  sha256 "1496c28e14c86ef501d9e66caf1620abd2f80acb15ca78eb42a9cc03f1aba50f"

  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg",
      verified: "s3.amazonaws.com/BBSW-download/"
  name "Yojimbo"
  desc "Your effortless, reliable information organiser"
  homepage "https://www.barebones.com/products/yojimbo/"

  livecheck do
    url "https://versioncheck.barebones.com/Yojimbo.xml"
    regex(/Yojimbo[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Yojimbo.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Yojimbo Help*#{version}",
    "~/Library/Caches/com.barebones.yojimbo4",
    "~/Library/HTTPStorages/com.barebones.yojimbo4",
    "~/Library/Logs/Yojimbo",
    "~/Library/Preferences/com.barebones.yojimbo4.plist",
    "~/Library/Saved Application State/com.barebones.yojimbo4.savedState",
    "~/Yojimbo",
  ]
end
