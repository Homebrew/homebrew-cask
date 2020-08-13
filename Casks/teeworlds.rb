cask "teeworlds" do
  version "0.7.5"
  sha256 "a79155c8bd7a0ce08457760f1ce37d8b7611f86717659bb3d90cd0e2dae5194b"

  url "https://downloads.teeworlds.com/teeworlds-#{version}-osx.dmg"
  appcast "https://teeworlds.com/?page=downloads"
  name "Teeworlds"
  homepage "https://www.teeworlds.com/"

  app "Teeworlds.app"
  app "Teeworlds Server.app"
end
