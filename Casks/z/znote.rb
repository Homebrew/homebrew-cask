cask "znote" do
  arch arm: "-arm64"

  version "3.5.2"
  sha256 arm:   "d51d3e049e3f05d7d4987ddefa9a23328f7a8de74a275490705bcb83ce46ee64",
         intel: "9350a250df36ceb9f90552c4562b25443f868c2916e0feeb2cc53b62c1ea06de"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
