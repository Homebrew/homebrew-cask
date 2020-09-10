cask "tv-browser" do
  version "4.2.1"
  sha256 "bc7ce87e1d27d1d40964bdcb5b9b5779a518567d1cd36a71d62deb8da73d4f7c"

  # sourceforge.net/tvbrowser/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/tvbrowser/tvbrowser_#{version}_macjava.dmg"
  appcast "https://sourceforge.net/projects/tvbrowser/rss"
  name "TV-Browser"
  desc "Electronic TV guide"
  homepage "https://www.tvbrowser.org/"

  app "TV-Browser.app"
end
