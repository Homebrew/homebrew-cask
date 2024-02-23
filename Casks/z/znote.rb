cask "znote" do
  arch arm: "-arm64"

  version "2.4.8"
  sha256 arm:   "8bfc6a44cb28758d0c5fb39931e8de032e915fb6487057d188c088e34dc7af98",
         intel: "9d06f7ec8426dba9a72fed9f710dbdb65b96db2606c08d30d4b826e92c994693"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  depends_on macos: ">= :el_capitan"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
