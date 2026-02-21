cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 arm:   "4de556a27e522d0b049500fc022d3d4c883b031b233933d17478b09044eaf397",
         intel: "1a4643c657b8e6856705ce6c4bfce477c1742c3b7ad609c2d77d4dbe99d34665"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg",
      verified: "github.com/Zettlr/Zettlr/"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"

  depends_on macos: ">= :monterey"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
