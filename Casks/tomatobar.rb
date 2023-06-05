cask "tomatobar" do
  version "3.4.2a"
  sha256 "c7620fa9f8d8c9202a90e98bfc978956454a2f3793a664d9d315d642b11b80c0"

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
