cask "unnaturalscrollwheels" do
  version "1.2.2"
  sha256 "1df6542af46cf5f48a1099598dabcc3fc3b8d8caa8817b0c4261071efd76db21"

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
