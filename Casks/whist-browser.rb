cask "whist-browser" do
  arch arm: "arm64", intel: "x64"

  version 102.1.41.11,300.13
  sha256 :no_check

  url "https://whist-browser-macos-#{arch}-prod.s3.amazonaws.com/Whist-latest-#{arch}.dmg",
      verified: "whist-browser-macos-#{arch}-prod.s3.amazonaws.com/"
  name "Whist Browser"
  desc "Web browser with streamable cloud tabs"
  homepage "https://www.whist.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Whist Browser.app"
end
