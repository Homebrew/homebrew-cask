cask "tortoisehg" do
  version "5.5"
  sha256 "3b8663b18b74ad58100380fcca4bf5a46922ffe112815c18aa9de8f514c866bb"

  # mercurial-scm.org/release/tortoisehg/ was verified as official when first introduced to the cask
  url "https://www.mercurial-scm.org/release/tortoisehg/macos/TortoiseHg-#{version}-mac-x64-qt5.dmg"
  appcast "https://www.mercurial-scm.org/release/tortoisehg/macos/"
  name "TortoiseHg"
  homepage "https://tortoisehg.bitbucket.io/"

  app "TortoiseHg.app"
end
