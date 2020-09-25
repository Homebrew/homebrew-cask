cask "tigerjython" do
  version :latest
  sha256 :no_check

  url "http://www.tjgroup.ch/download/TigerJython.dmg"
  name "TigerJython"
  desc "Jython-based educational programming environment"
  homepage "http://www.tjgroup.ch/"

  suite "TigerJython"
  zap trash: "~/Library/Caches/org.aplu.TigerJython-Mac "
end
