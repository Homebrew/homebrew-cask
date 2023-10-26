cask "zenbreak" do
  version "1.0.0"
  sha256 "a15adc02a10cde2dab5acb14a5b88ccbe379137d1a5d7db7b7994821454fde7b"

  url "https://github.com/Giuliopime/ZenBreak/releases/download/#{version}/ZenBreak.zip"
  name "ZenBreak"
  desc "Menu bar app that reminds you to take breaks"
  homepage "https://github.com/Giuliopime/ZenBreak"

  app "ZenBreak.app"

  zap trash: [
    "~/Library/Containers/dev.giuliopime.ZenBreak",
    "~/Library/Application Scripts/dev.giuliopime.ZenBreak",
  ]
end
