cask "tortoisehg" do
  version "5.5.2"
  sha256 "f4824ad3365524e3a5accc9ba744bad9744b9fef357755585c2934ee1a118d34"

  # mercurial-scm.org/release/tortoisehg/ was verified as official when first introduced to the cask
  url "https://www.mercurial-scm.org/release/tortoisehg/macos/TortoiseHg-#{version}-mac-x64-qt5.dmg"
  appcast "https://www.mercurial-scm.org/release/tortoisehg/macos/"
  name "TortoiseHg"
  homepage "https://tortoisehg.bitbucket.io/"

  app "TortoiseHg.app"
end
