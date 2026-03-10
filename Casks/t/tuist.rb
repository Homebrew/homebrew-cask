cask "tuist" do
  version "4.156.0"
  sha256 "be6f06da06a1d2be134841a9afbd52c8a69106480e5dcfbd73cf55c1a431cb64"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
