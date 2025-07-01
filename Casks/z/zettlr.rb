cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.5.1"
  sha256 arm:   "0c3013f1e54156094b55515b9413c82fce5d8e57dfea8176db91708940acc9cc",
         intel: "8d5e3959e08bd46cedcf51967ee2b5d334850036764bb8e5681ac128e548ae4e"

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
