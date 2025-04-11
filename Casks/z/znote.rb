cask "znote" do
  arch arm: "-arm64"

  version "3.1.2"
  sha256 arm:   "1bec45f04021bf1c173af5ae8188f799e9ee202c4e41fd0db8d8dfec75a8e2d7",
         intel: "4fd40da48d4726e7fcc57cd7025933b8bd9f0bc0997f3e9eb2ace3a116a5c919"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
