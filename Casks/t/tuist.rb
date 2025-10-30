cask "tuist" do
  version "4.95.0"
  sha256 "641704dafd2afb306c242d150f78323a8c27859eb392efc2404ae00a6aa55240"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
