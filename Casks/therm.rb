cask "therm" do
  version "0.5.0"
  sha256 "5e2271d077f08aa084a2107b02d546363746ab21b07bcea1ccd286554deaf930"

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
