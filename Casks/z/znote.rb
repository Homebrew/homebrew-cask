cask "znote" do
  arch arm: "-arm64"

  version "4.9.1"
  sha256 arm:   "af3bbd4e1b1d58baf9ac73455e97f3814001f0a3025f6298615be59ec574459c",
         intel: "be7fa10810d85d64c041923c113e85331392e55f56392295755c86c8ac209a95"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg"
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
