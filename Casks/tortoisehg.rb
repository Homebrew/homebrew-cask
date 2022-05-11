cask "tortoisehg" do
  version "6.1.2"
  sha256 "e78e552df0e787fe6be147ffdb201a23d9627793285b5a765761cdec426806a4"

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
