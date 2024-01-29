cask "znote" do
  arch arm: "-arm64"

  version "2.4.0"
  sha256 arm:   "49c4674ad10d6c87233fbd0ec88c6e238aabdc412a6a79e6c44694733b0ebc88",
         intel: "558943f9066ad4f8c864635ca56b1ba5b17535b4b5b671e7d0c96893b4e5947b"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  depends_on macos: ">= :el_capitan"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl3",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
