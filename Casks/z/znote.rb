cask "znote" do
  arch arm: "-arm64"

  version "2.6.9"
  sha256 arm:   "3970e0035817cf50eb41a2de7e97879a391b053449a11d98792f97109b87464a",
         intel: "0d1d39193b930dd9bf487916f7e51ebcd1b5cb40067eb4a7a674e957cf81badb"

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
