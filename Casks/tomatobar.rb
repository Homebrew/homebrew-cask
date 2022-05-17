cask "tomatobar" do
  version "3.4.0"
  sha256 "b3ab06fa2c47f41d3bc6baeccfc9145554d68ed6311a75672a696d9d4a298f7d"

  url "https://github.com/ivoronin/TomatoBar/releases/download/v#{version}/TomatoBar-v#{version}.zip"
  name "TomatoBar"
  desc "Menu bar pomodoro timer"
  homepage "https://github.com/ivoronin/TomatoBar"

  app "TomatoBar.app"

  zap trash: [
    "~/Library/Containers/com.github.ivoronin.TomatoBar",
    "~/Library/Application Scripts/com.github.ivoronin.TomatoBar",
  ]
end
