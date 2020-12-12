cask "therm" do
  version "0.4.2"
  sha256 "7300338f81d3bb891852875aef58e93e99b1684f7f204158b99713bc94f8b22a"

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm-#{version}.zip"
  appcast "https://github.com/trufae/Therm/releases.atom"
  name "Therm"
  desc "Fork of iTerm2 that aims to have good defaults and minimal features"
  homepage "https://github.com/trufae/Therm"

  app "Therm.app"
end
