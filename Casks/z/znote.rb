cask "znote" do
  arch arm: "-arm64"

  version "3.8.2"
  sha256 arm:   "fcb41a144160f70380a9302740ad471988fe09f44954e39eb2eadd82396d8fe4",
         intel: "6e0941f3935d7ed3f53c7a3bf36ac31904440f38d3a894035f4a4e9730af23aa"

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
