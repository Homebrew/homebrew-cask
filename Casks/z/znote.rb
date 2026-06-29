cask "znote" do
  arch arm: "-arm64"

  version "4.0.0"
  sha256 arm:   "d61bee2328fb7c6e287b55fd8e9257bf3e6d7e76813f3b30d54d4d80224c6cfc",
         intel: "1190c992b59cae230d72003dbfec39215d7d4d0b194bccaa2e005870c138ea8a"

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
