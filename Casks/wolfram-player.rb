cask "wolfram-player" do
  version "12.3.1"
  sha256 "f9b595216ff09c939addc382b38016ddde67ae3104ec00302739417586af4ea9"

  url "https://account.wolfram.com/download/public/wolfram-player/#{version}/desktop/MAC"
  name "Wolfram Player"
  desc "Tool to view and interact with Wolfram notebooks"
  homepage "https://www.wolfram.com/player"

  livecheck do
    url :homepage
    regex(/Latest\s+version\s+(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "Wolfram Player.app"

  zap trash: [
    "~/Library/Preferences/com.wolfram.Mathematica.Player.plist",
    "~/Library/WolframPlayer",
  ]
end
