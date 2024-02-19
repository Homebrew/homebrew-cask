cask "tuist" do
  version "4.3.0"
  sha256 "c30528ae40ec709e189bfd6c63e5e4e2c3865a882c92cba1341d04c345baa3fc"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
