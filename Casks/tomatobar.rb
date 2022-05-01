cask "tomatobar" do
  version "3.3.0"
  sha256 "ff4d465f0d70cb2e234918a650d3844352d0179e9f3742666ae98d909988dc23"

  url "https://github.com/ivoronin/TomatoBar/releases/download/v#{version}/TomatoBar-v#{version}.zip"
  name "tomato-bar"
  desc "🍅 World's neatest Pomodoro timer for menu bar"
  homepage "https://github.com/ivoronin/TomatoBar"

  app "TomatoBar.app"
end
