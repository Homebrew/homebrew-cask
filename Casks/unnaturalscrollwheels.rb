cask "unnaturalscrollwheels" do
  version "1.2.0"
  sha256 "91663a673d1cbf606de67048ad7c44da85d2522badedda0fef01f9f2f8d252b5"

  url "https://github.com/ther0n/UnnaturalScrollWheels/releases/download/#{version}/UnnaturalScrollWheels-#{version}.dmg"
  appcast "https://github.com/ther0n/UnnaturalScrollWheels/releases.atom"
  name "UnnaturalScrollWheels"
  desc "Tool to invert scroll direction for physical scroll wheels"
  homepage "https://github.com/ther0n/UnnaturalScrollWheels"

  app "UnnaturalScrollWheels.app"

  uninstall quit: "com.theron.UnnaturalScrollWheels"

  zap trash: [
    "~/Library/Application Scripts/com.theron.UnnaturalScrollWheels",
    "~/Library/Containers/com.theron.UnnaturalScrollWheels",
  ]
end
