cask "tortoisehg" do
  version "6.1.3"
  sha256 "eaf131d28bdaeda7bbb7d6954e85f1ff0e794b0fee936ec67a1db52e327e3f9b"

  url "https://www.mercurial-scm.org/release/tortoisehg/macos/TortoiseHg-#{version}-mac-x64-qt5-python2.dmg",
      verified: "mercurial-scm.org/release/tortoisehg/"
  name "TortoiseHg"
  desc "Tools for the Mercurial distributed revision control system"
  homepage "https://tortoisehg.bitbucket.io/"

  livecheck do
    url "https://www.mercurial-scm.org/release/tortoisehg/macos/"
    regex(/TortoiseHg-(\d+(?:\.\d+)*)-mac-x64-qt5-python2\.dmg/i)
  end

  app "TortoiseHg.app"
end
