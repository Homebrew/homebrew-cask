cask "tuist" do
  version "4.119.3"
  sha256 "42dec3a5828921076a3103a69faa2995b9edd63797ad196e0a651fa11fc4cf28"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
