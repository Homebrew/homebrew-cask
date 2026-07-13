cask "znote" do
  arch arm: "-arm64"

  version "4.2.1"
  sha256 arm:   "3a5f2f9e5757f18aaa60b6ee67b4d5626b81a3155c5739fa3d0702789c73eaaa",
         intel: "b1922368d4d66ea82c0c0f234f97fc89fa5b6882c1df0dc4a9c1f5f1b2ef320b"

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
