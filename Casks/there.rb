cask "there" do
  version "1.8.10"
  sha256 "8c5b6e2e8a35d0f1088c15cf8d4f9b5a407feeeeccbc764a08098c354a181939"

  # github.com/therehq/there-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/therehq/there-desktop/releases/download/v#{version}/There-#{version}-mac.zip"
  appcast "https://github.com/therehq/there-desktop/releases.atom"
  name "There"
  desc "Tool to display the local times of people in a team"
  homepage "https://there.pm/"

  app "There.app"

  uninstall signal: ["TERM", "pm.there.desktop"]
end
