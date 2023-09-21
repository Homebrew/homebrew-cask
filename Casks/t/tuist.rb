cask "tuist" do
  version "3.27.1"
  sha256 "9eaedb4fbcbbb223f65df6e6eae4a5a61b76345c4dc8089b39dae6c1a7ac45cf"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
