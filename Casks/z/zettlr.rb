cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.4.1"
  sha256 arm:   "e8ea818a9df52a841fe6a2f9197f11866d8e96afb2105c4c71c792ad1bd119e8",
         intel: "bc5d553243b2cd63b280f13b3d0069ae66cf4a6e6f305fd8828813650bd8e79a"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

  depends_on macos: ">= :big_sur"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
