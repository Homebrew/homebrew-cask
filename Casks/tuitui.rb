cask "tuitui" do
  version "5.10.0"
  sha256 :no_check

  url "https://down.360safe.com/tuitui/tuitui_#{version}.dmg"
  name "TuiTui IM"
  desc "Office communication software"
  homepage "https://im.qihoo.net/"

  app "360家.app"

  caveats do
    discontinued
  end
end
