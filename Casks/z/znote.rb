cask "znote" do
  arch arm: "-arm64"

  version "3.8.3"
  sha256 arm:   "4e45bd1d30bc47e0acf70afd27fc62837b701e60152a043aeb08b0cfd1b8a9a8",
         intel: "1a7e1d3025a6e923b051dd79c85155df9fc2a07e0f9374da451d370c8a85e5e3"

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
