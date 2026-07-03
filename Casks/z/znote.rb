cask "znote" do
  arch arm: "-arm64"

  version "4.1.0"
  sha256 arm:   "20f2ea3278c1f816a9818c9988667a84a3ce3bcf3952811ef1a4cf81cc4ee6ba",
         intel: "de8ec94d4d8f98b7825830112b281cc93b11f8e9f49dde70b7163d33b58d7cb4"

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
