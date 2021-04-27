cask "tortoisehg" do
  version "5.7.1"
  sha256 "5844907c752259918c4563b8d4924ff5b75831dceaf75889caf5b1b868086195"

  url "https://www.mercurial-scm.org/release/tortoisehg/macos/TortoiseHg-#{version}-mac-x64-qt5.dmg",
      verified: "mercurial-scm.org/release/tortoisehg/"
  appcast "https://www.mercurial-scm.org/release/tortoisehg/macos/"
  name "TortoiseHg"
  homepage "https://tortoisehg.bitbucket.io/"

  app "TortoiseHg.app"
end
