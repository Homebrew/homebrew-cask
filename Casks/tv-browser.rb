cask "tv-browser" do
  version "4.2.4"
  sha256 "56f0baf6ed1a690c1ced9d90e79e1cec7aecdfef9e38076c24a2bb63bf23b702"

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
