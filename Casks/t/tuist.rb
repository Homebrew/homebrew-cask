cask "tuist" do
  version "3.28.0"
  sha256 "0f31eb58af1dbe56b58e300efd3028f9448c498bfd5a8b9b30857d69db1d514e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
