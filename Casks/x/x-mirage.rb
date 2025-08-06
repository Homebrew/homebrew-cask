cask "x-mirage" do
  version "3.0.2"
  sha256 :no_check

  url "http://dl.x-mirage.com/x-mirage.dmg"
  name "X-Mirage"
  desc "AirPlay and Google Cast receiver"
  homepage "https://www.x-mirage.com/x-mirage/"

  disable! date: "2024-12-16", because: :discontinued

  app "X-Mirage.app"
end
