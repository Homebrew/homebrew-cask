cask "tuist" do
  version "4.145.0"
  sha256 "9d39a728ae54dc9d2d1e5c2399caa15a162a89d1aadb96c3e3f5368f51914c96"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
