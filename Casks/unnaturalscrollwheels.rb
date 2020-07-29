cask "unnaturalscrollwheels" do
  version "1.0.0"
  sha256 "30f3779d02786c3c8b172bd759c5417e9e965c21f6ec528e39714b9345469d27"

  url "https://github.com/ther0n/UnnaturalScrollWheels/releases/download/#{version}/UnnaturalScrollWheels.dmg"
  appcast "https://github.com/ther0n/UnnaturalScrollWheels/releases.atom"
  name "UnnaturalScrollWheels"
  homepage "https://github.com/ther0n/UnnaturalScrollWheels"

  app "UnnaturalScrollWheels.app"
end
