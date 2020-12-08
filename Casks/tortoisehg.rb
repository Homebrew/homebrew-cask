cask "tortoisehg" do
  version "5.6.1"
  sha256 "6bd5106bbd34ee0e381f912fbfb0f66231808721cd73d226f4742f1e0d7c303d"

  # mercurial-scm.org/release/tortoisehg/ was verified as official when first introduced to the cask
  url "https://www.mercurial-scm.org/release/tortoisehg/macos/TortoiseHg-#{version}-mac-x64-qt5.dmg"
  appcast "https://www.mercurial-scm.org/release/tortoisehg/macos/"
  name "TortoiseHg"
  homepage "https://tortoisehg.bitbucket.io/"

  app "TortoiseHg.app"
end
