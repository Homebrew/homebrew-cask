cask "whist-browser" do
  arch arm: "arm64", intel: "x64"

  version :latest
  sha256 :no_check

  url "https://whist-browser-macos-#{arch}-prod.s3.amazonaws.com/Whist-latest-#{arch}.dmg",
      verified: "whist-browser-macos-#{arch}-prod.s3.amazonaws.com/"
  name "Whist Browser"
  desc "Web browser with streamable cloud tabs"
  homepage "https://www.whist.com/"

  app "Whist Browser.app"
end
