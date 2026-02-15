cask "znote" do
  arch arm: "-arm64"

  version "3.6.2"
  sha256 arm:   "33f5bd33fca1b1513c780fa0a98796a11eb48862247b00a9df949e1a7513844e",
         intel: "64199d0b156da5f100eaa89b517c1d24bbe1ea5f5ea2b219fec908c6802f0043"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
