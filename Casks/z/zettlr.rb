cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "662a1db0785d306afbf471be15aa1b3f62316d9f49b81d2fe19e0496b3cb05b5",
         intel: "673a2e576393717370f8c12b43d3436178afd3bb22172bde3ee015abe693da68"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

  depends_on macos: ">= :catalina"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
