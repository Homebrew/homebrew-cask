cask "tortoisehg" do
  version "5.5.1"
  sha256 "fb0e64fe11098d4c929427c5d8a11a17ff526ac5c98c698f7b230814fdb8ef6a"

  # mercurial-scm.org/release/tortoisehg/ was verified as official when first introduced to the cask
  url "https://www.mercurial-scm.org/release/tortoisehg/macos/TortoiseHg-#{version}-mac-x64-qt5.dmg"
  appcast "https://www.mercurial-scm.org/release/tortoisehg/macos/"
  name "TortoiseHg"
  homepage "https://tortoisehg.bitbucket.io/"

  app "TortoiseHg.app"
end
