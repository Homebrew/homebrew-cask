cask "znote" do
  arch arm: "-arm64"

  version "4.8.0"
  sha256 arm:   "35eb381afedcfc760c800325c39e0f9387709cd8458c1e07ee144d856e0a9cff",
         intel: "51a017b93419702e2ac9eb3dd7a903faf7ac1c1b59676b6a90d0aed8ad9afa7c"

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
