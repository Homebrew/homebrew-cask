cask "tracks-live" do
  version "1.3.0-6"
  sha256 "bf7dac4be365ce865b447fc390146ab9dc4cc422523bd2af84e6ec1356e7c4ec"

  url "https://cf-installers.waves.com/TracksLive/Tracks-Live-Install-#{version}.dmg"
  name "Tracks Live"
  homepage "https://www.waves.com/mixers-racks/tracks-live"

  app "Tracks Live #{version.major_minor}.app"
end
