cask "znote" do
  arch arm: "-arm64"

  version "4.9.0"
  sha256 arm:   "579b79a75ba18cf526d586d97aa7859888e615abb1b92ac49c4edbb06e295c51",
         intel: "108ea8b5b3f9a278456a07ce9a00e1d59b41af62e26a2ad51ca7850fe7d7be0d"

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
