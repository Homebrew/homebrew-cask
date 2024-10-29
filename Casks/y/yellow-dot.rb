cask "yellow-dot" do
  on_monterey do
    version "1"
    sha256 "6ef028d450c3a102f0031e70bffe2c22dc8363661bc463673130a01b0e186fde"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "2.4"
    sha256 "ba2aeb329e49db187f0954014a8eb5f99f55c078722685fb42e05061209dc908"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  url "https://github.com/FuzzyIdeas/YellowDot/releases/download/v#{version}/YellowDot-#{version}.zip",
      verified: "github.com/FuzzyIdeas/YellowDot/"
  name "Yellow Dot"
  desc "Hide the macOS yellow recording dot in the corner of your screen"
  homepage "https://lowtechguys.com/yellowdot"

  depends_on macos: ">= :monterey"

  app "YellowDot.app"

  uninstall quit: "com.lowtechguys.YellowDot",
            login_item: "YellowDot"

  zap trash: "~/Library/Preferences/com.lowtechguys.YellowDot.plist"
end
