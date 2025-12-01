cask "tuist" do
  version "4.110.0"
  sha256 "0df0fca00bb5264300090d4412733c1cdd75e89c27b17db0fda562ad962269bf"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
