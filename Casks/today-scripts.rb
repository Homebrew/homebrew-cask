cask "today-scripts" do
  version "1.1"
  sha256 "e9e1136e787347f257e9554efdd546c4fd92a6b2a6ae28d23f0065b3d7b96bc4"

  url "https://github.com/SamRothCA/Today-Scripts/releases/download/v#{version}/Today-Scripts.tar.gz"
  appcast "https://github.com/SamRothCA/Today-Scripts/releases.atom"
  name "Today Scripts"
  homepage "https://github.com/SamRothCA/Today-Scripts"

  app "Today Scripts.app"
end
