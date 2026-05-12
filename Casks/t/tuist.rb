cask "tuist" do
  version "4.193.2"
  sha256 "4e2e2b058551dc53b0a0631598954313694479f5119d5e56d5cd1644311900b7"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
