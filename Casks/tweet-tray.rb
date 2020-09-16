cask "tweet-tray" do
  version "1.1.5"
  sha256 "55496bbd3253165dd4ec639ffca2626605892e44d59842578dd44cab1073cb04"

  url "https://github.com/jonathontoon/tweet-tray/releases/download/v#{version}/tweet-tray-#{version}.dmg"
  appcast "https://github.com/jonathontoon/tweet-tray/releases.atom"
  name "Tweet Tray"
  desc "Tweet quickly from the desktop without any  distractions"
  homepage "https://github.com/jonathontoon/tweet-tray"

  app "Tweet Tray.app"
end
