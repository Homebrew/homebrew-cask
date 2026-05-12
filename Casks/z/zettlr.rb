cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "4.5.0"
  sha256 arm:   "fd1e964378f4130703754ceee48ad99db57a5917e7d961af0e83ddf52d392a4b",
         intel: "4ab3fde2ab4cc103797c2f74f035738c3f735e09bd1d5c16529bb5db64790ceb"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg",
      verified: "github.com/Zettlr/Zettlr/"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"

  depends_on macos: :monterey

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
