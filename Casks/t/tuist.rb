cask "tuist" do
  version "4.103.0"
  sha256 "6da63e414d45dc8f32d07fd62aa24af3755e11255708f1e2dc47ff24315d3c6b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
