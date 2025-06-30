cask "tuist" do
  version "4.55.1"
  sha256 "c3c33ab249004fdc56dd145dd972083baa80117a0e5f7e723cfbe6d8a3a94eaa"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
