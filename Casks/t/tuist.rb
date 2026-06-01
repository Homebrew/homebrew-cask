cask "tuist" do
  version "4.195.12"
  sha256 "7c03aa947f82f3abb9ef0674261e91dcc53488253c9590abb3df841b73697dab"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
