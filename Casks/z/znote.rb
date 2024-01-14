cask "znote" do
  arch arm: "-arm64"

  version "2.3.11"
  sha256 arm:   "10413386d5b2e5f46ca7a1bb93a6e41d31be9a0b891f6024d1e5467dad621cf9",
         intel: "34a92ed5fd66fcc53789681be80b5586356daaca053d96dc615b91067607fe1d"

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
