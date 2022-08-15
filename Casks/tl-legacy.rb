cask "tl-legacy" do
  version "148.2"
  sha256 :no_check

  url "https://tlaun.ch/macos"
  name "tl-legacy"
  desc "Good old fast and easy launcher for Minecraft"
  homepage "https://tlaun.ch/"

  app "TL Legacy.app"

  zap trash: [
               '~/Library/Saved Application State/ru.turikhay.tlauncher.legacy.savedState',
               '/Library/Application Support/minecraft'
             ]
end
