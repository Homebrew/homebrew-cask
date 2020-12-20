cask "xit" do
  version "1.0b15"
  sha256 "92003bfb419c462f832ff143721cbc416017ebf53abe44276180e4f4b8a6c4fb"

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
