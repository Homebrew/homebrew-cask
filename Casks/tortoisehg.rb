cask "tortoisehg" do
  version "5.6.1"
  sha256 "6bd5106bbd34ee0e381f912fbfb0f66231808721cd73d226f4742f1e0d7c303d"

  url "https://www.mercurial-scm.org/release/tortoisehg/macos/TortoiseHg-#{version}-mac-x64-qt5.dmg",
      verified: "mercurial-scm.org/release/tortoisehg/"
  appcast "https://www.mercurial-scm.org/release/tortoisehg/macos/"
  name "TortoiseHg"
  homepage "https://tortoisehg.bitbucket.io/"

  app "TortoiseHg.app"
end
