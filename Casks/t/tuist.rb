cask "tuist" do
  version "4.93.0"
  sha256 "38235a11d917dad0efb5286c59105621567f4127fe35d0ada186a57852eb0e5a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
