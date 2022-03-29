cask "therm" do
  version "0.5.0"
  sha256 "c83ab68524cc0f60b57672e06026f1e2d7481e7e6aadd28402f2f0a587686f7f"

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm-#{version}.zip"
  name "Therm"
  desc "Fork of iTerm2 that aims to have good defaults and minimal features"
  homepage "https://github.com/trufae/Therm"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Therm.app"
end
