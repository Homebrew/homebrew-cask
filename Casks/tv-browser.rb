cask "tv-browser" do
  version "4.2.6"
  sha256 "b4db2548dae7491619c49a4d22fde422331d42065af448b2c844b9a3f196809d"

  url "https://downloads.sourceforge.net/tvbrowser/tvbrowser_#{version}_macjava.dmg",
      verified: "sourceforge.net/tvbrowser/"
  name "TV-Browser"
  desc "Electronic TV guide"
  homepage "https://www.tvbrowser.org/"

  # TV-Browser has used a single-digit version (4) for a major version release
  # in the past, so this has to use the looser (*) version regex format.
  livecheck do
    url :url
    regex(%r{url=.*?/tvbrowser[._-]v?(\d+(?:\.\d+)*)(?:[._-]mac(?:java)?)?\.dmg}i)
  end

  app "TV-Browser.app"
end
