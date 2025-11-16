cask "znote" do
  arch arm: "-arm64"

  version "3.3.4"
  sha256 arm:   "b0cb3dfaf65fd1675ef2fbd0031a40d300477d787de8dbb031741dddc3c015c9",
         intel: "7b96c6bb67ebeb90a8b8a0bc1a8f8a36b3ef68cd5820b8d56add6982c502ce71"

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
