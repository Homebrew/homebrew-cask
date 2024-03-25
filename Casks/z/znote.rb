cask "znote" do
  arch arm: "-arm64"

  version "2.5.5"
  sha256 arm:   "78012086edfe4c666f4c892703c8736817107738ed153dd92034e6175218a4d7",
         intel: "111aa932136b0cfbbc14bc6753d64343b0fa643a7a1211bfd485383ca78bd969"

  url "https://github.com/alagrede/znote-app/releases/download/v#{version}/znote-#{version}#{arch}.dmg",
      verified: "github.com/alagrede/znote-app/"
  name "Znote"
  desc "Notes-taking app"
  homepage "https://znote.io/"

  depends_on macos: ">= :el_capitan"

  app "znote.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tony.znote.sfl*",
    "~/Library/Application Support/znote",
    "~/Library/Preferences/com.tony.znote.plist",
    "~/Library/Saved Application State/com.tony.znote.savedState",
  ]
end
