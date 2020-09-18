cask "trackers-away" do
  version "1.0.3"
  sha256 "3877b21814f384e5fb34524a5aca966c5bf56de622f30c836826e5378d8ea60d"

  url "https://github.com/tim-hub/TrackersAway/releases/download/v#{version}/Trackers-Away-#{version}.dmg"
  name "Trackers Away"
  desc "The best cross-platform ads and trackers blocker and hosts manager."
  homepage "https://github.com/tim-hub/TrackersAway/"

  app "Trackers Away.app"

  zap trash: "~/.trackers-away.json"
end
