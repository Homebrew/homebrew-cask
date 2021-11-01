cask "tv-browser" do
  version "4.2.3"
  sha256 "f5542146d514b44fbb3dddb0c36bc64af0436820db47bda4334d4b2e2b869f77"

  url "https://downloads.sourceforge.net/tvbrowser/tvbrowser_#{version}_macjava.dmg",
      verified: "sourceforge.net/tvbrowser/"
  name "TV-Browser"
  desc "Electronic TV guide"
  homepage "https://www.tvbrowser.org/"

  livecheck do
    regex(%r{url=.*?/tvbrowser/files/.*?[-_/](\d+(?:[-.]\d+)+)[._-]macjava.dmg}i)
  end

  app "TV-Browser.app"
end
