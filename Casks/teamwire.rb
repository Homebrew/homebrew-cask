cask "teamwire" do
  version "2.2.1"
  sha256 "8471cee1b211c71e5764ec361a4eed4e9742a1de591091ab2022c317d11a8767"

  url "https://desktop.teamwire.eu/dist/#{version}/Teamwire-macos64_#{version}.dmg"
  name "Teamwire"
  homepage "https://www.teamwire.eu/"

  app "Teamwire.app"

  zap trash: "~/Library/Application Support/Teamwire/"
end
