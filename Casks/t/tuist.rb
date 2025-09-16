cask "tuist" do
  version "4.74.0"
  sha256 "5398b889e322744d84fbd9f541df0bdecd9273e62c0dc66a174bc35ef3ce8018"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
