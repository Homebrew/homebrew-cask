cask "tickeys" do
  version "0.5.0"
  sha256 "55e4550ced3f1bed413e15229e813443019f335f546b1edd41418744eee8e325"

  # github.com/yingDev/Tickeys/ was verified as official when first introduced to the cask
  url "https://github.com/yingDev/Tickeys/releases/download/#{version}/Tickeys-#{version}-yosemite.dmg"
  appcast "https://github.com/yingDev/Tickeys/releases.atom"
  name "Tickeys"
  desc "Utility for producing audio feedback when typing"
  homepage "https://www.yingdev.com/projects/tickeys"

  app "Tickeys.app"
end
