cask "xit" do
  version "1.0b14"
  sha256 "cfd3a0450e55d9e478ef392aa11c42c509a2dafc41ede41356b6579e953df830"

  url "https://github.com/Uncommon/Xit/releases/download/#{version}/Xit.zip"
  appcast "https://github.com/Uncommon/Xit/releases.atom"
  name "Xit"
  desc "GUI for the git version control system"
  homepage "https://github.com/Uncommon/Xit"

  depends_on macos: ">= :mojave"

  app "Xit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.uncommonplace.xit.sfl*",
    "~/Library/Caches/com.uncommonplace.Xit",
    "~/Library/Preferences/com.uncommonplace.Xit.plist",
    "~/Library/Saved Application State/com.uncommonplace.Xit.savedState",
  ]
end
