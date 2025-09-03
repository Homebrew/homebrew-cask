cask "tuist" do
  version "4.66.1"
  sha256 "73bd8b0c5e80984f20ad69d5db74335c1da6cd37478fbd6bbe92972baa202497"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
