cask "yellowdot" do
  on_monterey :or_older do
    version "1"
    sha256 "6ef028d450c3a102f0031e70bffe2c22dc8363661bc463673130a01b0e186fde"

    url "https://github.com/FuzzyIdeas/YellowDot/releases/download/v#{version}/YellowDot.zip",
        verified: "github.com/FuzzyIdeas/YellowDot/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "2.6"
    sha256 "f94b255f1cc580ab250541581104d1b5ee65542fdd7694c7f9b20c30b86b4659"

    url "https://github.com/FuzzyIdeas/YellowDot/releases/download/v#{version}/YellowDot-#{version}.dmg",
        verified: "github.com/FuzzyIdeas/YellowDot/"
  end

  name "Yellow Dot"
  desc "Hides privacy indicators"
  homepage "https://lowtechguys.com/yellowdot"

  depends_on macos: ">= :big_sur"

  app "YellowDot.app"

  uninstall quit:       "com.lowtechguys.YellowDot",
            login_item: "YellowDot"

  zap trash: "~/Library/Preferences/com.lowtechguys.YellowDot.plist"
end
