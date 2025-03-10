cask "znote" do
  arch arm: "-arm64"

  version "3.0.6"
  sha256 arm:   "2281726da3e087b6077158a4bd6975c64529ee00a1653609f6a42a8adbbe2512",
         intel: "3589830e47caf00bdfb7e9547f631dd3f7052191f0dcf551c2bf28f3d5f57e57"

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
