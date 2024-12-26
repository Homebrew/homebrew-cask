cask "znote" do
  arch arm: "-arm64"

  version "2.7.5"
  sha256 arm:   "4ec259ebc744a62ee30a2b31850d79a965e4c0d184581b6f1ccf95d31a713d67",
         intel: "3c3df0ceab595a6a3a1abc3476385cebea6238a25a10edacc926f15d0ac14be9"

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
