cask "znote" do
  arch arm: "-arm64"

  version "4.2.4"
  sha256 arm:   "f16d941da0c370b76fd03b34331bce0bdec6d3baf84cdef6b781673b39cf97ff",
         intel: "cc528f5d5068203ecea97165e0c9a194b8c3d47cebaca159922a03dd4ea14116"

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
