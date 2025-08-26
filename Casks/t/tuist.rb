cask "tuist" do
  version "4.65.1"
  sha256 "1e40489fa3599eb2a49b814971ff8ac401f52fcf41dc3bbb67c2f4e3f9ddfdcc"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
