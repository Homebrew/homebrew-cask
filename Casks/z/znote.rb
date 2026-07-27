cask "znote" do
  arch arm: "-arm64"

  version "4.4.1"
  sha256 arm:   "64ba15d53b77c952833157f4b8b6a646172b46120508eb5f58c9adef10561a19",
         intel: "6a3e9c4b2e9fa3b8d8f81ffa8d1a997ed84869903bd75c6bccf34fbc03be82e2"

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
