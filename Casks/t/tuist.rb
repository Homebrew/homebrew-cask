cask "tuist" do
  version "4.119.0"
  sha256 "b754bc637aae1bad2042a6dc5d1bd89365bc92e94890b0adfebe0062464a4c4f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
