cask "tuist" do
  version "4.7.0"
  sha256 "6f053033add2951d147351b7a7108c3f14896bf8a78108f826d228e14491c502"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
