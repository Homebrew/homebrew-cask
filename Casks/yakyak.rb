cask "yakyak" do
  version "1.5.11.5"
  sha256 "a0f37f802b591f3f856c729a3db1537ecbbff37ec7eaa732bce09244ae824de0"

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx-x64.zip"
  name "Yakyak"
  desc "Desktop chat client for Google Hangouts"
  homepage "https://github.com/yakyak/yakyak"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "YakYak-darwin-x64/YakYak.app"
end
