cask "zdoom" do
  version "2.8.1"
  sha256 "4143e6a484c670f26ce56ef758313c7ca18455368e825665023b14fa3b8ee934"

  url "https://zdoom.org/files/zdoom/#{version.major_minor}/zdoom-#{version}.dmg"
  name "ZDoom"
  desc "Source port of Doom"
  homepage "https://zdoom.org/index"

  deprecate! date: "2023-12-17", because: :discontinued

  app "ZDoom.app"
end
