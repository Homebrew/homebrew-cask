cask "tn3270-x" do
  version "3.4.0"
  sha256 "a2e405dba632f6e2a72d0f6d3ed4ac622750fdf1ad67d3c63e2dd964914297ee"

  url "https://www.brown.edu/cis/tn3270/tn3270_X_#{version}.dmg"
  name "tn3270 for the Macintosh"
  desc "Terminal emulator for connecting to computers which use IBM 3270 terminal"
  homepage "https://www.brown.edu/cis/tn3270/index.html"

  depends_on macos: "<= :mojave"

  app "tn3270 X.app"

  caveats do
    discontinued
  end
end
