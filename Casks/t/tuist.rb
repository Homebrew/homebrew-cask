cask "tuist" do
  version "4.56.1"
  sha256 "f5eaeab9ddae2e5f90195fee0e0cd788cd78e684911fc656de5e185580adc58b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
