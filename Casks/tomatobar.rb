cask "tomatobar" do
  version "3.3.1"
  sha256 "c371cd6cd2f6aa3625e9c7d78a95ccfaff752873593abcea51d3eaea694bafc1"

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
