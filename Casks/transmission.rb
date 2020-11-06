cask "transmission" do
  version "3.00"
  sha256 "f9984b6ba51a02bb8f880c538b28e2c7d6a3b7a22257a166cc3e1d55a133ab34"

  # github.com/transmission/transmission/releases/ was verified as official when first introduced to the cask
  url "https://github.com/transmission/transmission/releases/download/#{version}/Transmission-#{version}.dmg"
  appcast "https://github.com/transmission/transmission/releases.atom"
  name "Transmission"
  desc "Open-source BitTorrent client"
  homepage "https://transmissionbt.com/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/transmission-nightly"

  app "Transmission.app"

  zap trash: [
    "~/Library/Application Support/Transmission",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.m0k.transmission.sfl*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Transmission Help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/org.m0k.transmission.help",
    "~/Library/Caches/org.m0k.transmission",
    "~/Library/Cookies/org.m0k.transmission.binarycookies",
    "~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist",
    "~/Library/Preferences/org.m0k.transmission.plist",
    "~/Library/Saved Application State/org.m0k.transmission.savedState",
  ]
end
