cask "tuist" do
  version "4.24.0"
  sha256 "3e9ea8421cfe4bb1259124b7a4c0c563d43405ba42d16741cdae74e2c0cf538f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
