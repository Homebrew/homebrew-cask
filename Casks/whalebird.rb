cask "whalebird" do
  version "4.3.3"
  sha256 "b16aaf19dc2a8232244487f98a07cf487642a7c30e15cd6e35341819b066b232"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg",
      verified: "github.com/h3poteto/whalebird-desktop/"
  appcast "https://github.com/h3poteto/whalebird-desktop/releases.atom"
  name "Whalebird"
  desc "Electron-based Mastodon and Pleroma client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"
end
