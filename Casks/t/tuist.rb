cask "tuist" do
  version "4.112.0"
  sha256 "db556f8f9987123861c24597e4a7328ebd43cffbc8b9a79a62b751133a4014fd"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
