cask "xtorrent" do
  version "2.1,v171"
  sha256 "26ea235dcb827c6e58ab3409bec83396e86704d742d517e527016ecd44672379"

  url "http://www.xtorrent.com/Xtorrent#{version.before_comma}(#{version.after_comma}).dmg"
  name "Xtorrent"
  homepage "http://www.xtorrent.com/"

  app "Xtorrent.app"
end
