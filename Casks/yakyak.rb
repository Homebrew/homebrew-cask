cask "yakyak" do
  version "1.5.10"
  sha256 "1e25fe66846153579626bacdf30bea712ed6e81216baf94c0ac89a681a4ca611"

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast "https://github.com/yakyak/yakyak/releases.atom"
  name "Yakyak"
  desc "Desktop chat client for Google Hangouts"
  homepage "https://github.com/yakyak/yakyak"

  app "YakYak-darwin-x64/YakYak.app"
end
