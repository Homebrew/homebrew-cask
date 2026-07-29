cask "znote" do
  arch arm: "-arm64"

  version "4.5.1"
  sha256 arm:   "69f6a8013abe73399d5ec5d8d4ff40efb9d4ec59d843acbae01a8f6bd9bc5e4b",
         intel: "c1a2eee2c3fbb96651ba807f7dc1be1012ac24739bc73a919b798a0514714042"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
