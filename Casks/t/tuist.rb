cask "tuist" do
  version "4.121.0"
  sha256 "350b104c36442ecbdcb9642dd6b84bfed9446a05c2eb97391c16d1dd30f97ef9"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
