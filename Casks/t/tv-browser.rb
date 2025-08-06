cask "tv-browser" do
  version "4.2.7"
  sha256 "b9f568db953da4e8cb93f77d8f90e8f0150fb9bda48b841bfa05d0d3117d580a"

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

  zap trash: [
    "~/Library/Application Support/TV-Browser",
    "~/Library/Preferences/TV-Browser",
    "~/Library/Preferences/tvbrowser.TVBrowser.plist",
    "~/Library/Saved Application State/tvbrowser.TVBrowser.savedState",
  ]
end
