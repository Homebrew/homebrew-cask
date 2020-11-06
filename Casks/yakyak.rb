cask "yakyak" do
  version "1.5.9"
  sha256 "d671fda8da58ef414fee9728f438957f07a0720274c38f56f5d4985a8f441968"

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast "https://github.com/yakyak/yakyak/releases.atom"
  name "Yakyak"
  desc "Desktop chat client for Google Hangouts"
  homepage "https://github.com/yakyak/yakyak"

  app "YakYak-darwin-x64/YakYak.app"
end
