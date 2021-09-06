cask "tortoisehg" do
  version "5.8.1"
  sha256 "02101a4f58bb452c059d1d98bcb565c88ecab55733c45bc7cd292dd4d19de256"

  url "https://www.mercurial-scm.org/release/tortoisehg/macos/TortoiseHg-#{version}-mac-x64-qt5.dmg",
      verified: "mercurial-scm.org/release/tortoisehg/"
  name "TortoiseHg"
  desc "Tools for the Mercurial distributed revision control system"
  homepage "https://tortoisehg.bitbucket.io/"

  livecheck do
    url "https://www.mercurial-scm.org/release/tortoisehg/macos/"
    strategy :page_match
    regex(/TortoiseHg-(\d+(?:\.\d+)*)-mac-x64-qt5\.dmg/i)
  end

  app "TortoiseHg.app"
end
