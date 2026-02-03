cask "tuist" do
  version "4.135.2"
  sha256 "7c8e193129f1d3a110a6b5779e79b6c135fd8eb10396d75539ec2711cdc385f0"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
