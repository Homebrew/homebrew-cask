cask "witsy" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "792e221ff74d8b9d76ca8a44cdd943aea1d8717811aa63b2396d647ab1d97f8b",
         intel: "26ba273995a7a23cc38b92a287dbf92e5b4e67ce62b688134be62b7039e471f9"

  url "https://github.com/nbonamy/witsy/releases/download/v#{version}/Witsy-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/nbonamy/witsy/"
  name "Witsy"
  desc ": desktop AI assistant / universal MCP client"
  homepage "https://witsyai.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Witsy.app"

  zap trash: [
    "~/Library/Application Support/Witsy",
    "~/Library/Logs/Witsy",
  ]
end
