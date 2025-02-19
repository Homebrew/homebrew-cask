cask "znote" do
  arch arm: "-arm64"

  version "3.0.0"
  sha256 arm:   "9fa66f9920cc4ba5843431639859a04e7b69fd7134f32b80012d9f07c153ceab",
         intel: "e4332f890f64b7f504c77f0b4c34d1b11eef64d3eb3e16939ad2ed8e6b3d05a7"

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
