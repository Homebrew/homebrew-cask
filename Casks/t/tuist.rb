cask "tuist" do
  version "4.195.6"
  sha256 "80fcee88c5db419215453abafef4fe89768e820f4c0feaf38a3221ceb241b043"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
