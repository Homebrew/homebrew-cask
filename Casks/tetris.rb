cask "tetris" do
  version "1.0"
  sha256 "9854cc35236f67ccbfe8cf12843e9b5ab302810e6783a1cba7849a52e576301f"

  url "https://github.com/Vui-Chee/Tetris-Solarized/releases/download/v#{version}/tetris-solarized-darwin-x64.zip"
  name "tetris"
  desc "Desktop game of Tetris"
  homepage "https://github.com/Vui-Chee/Tetris-Solarized"

  app "tetris-solarized-darwin-x64/tetris-solarized.app"
end
