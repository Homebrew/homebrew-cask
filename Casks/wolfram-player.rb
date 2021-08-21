cask "wolfram-player" do
  version "12.3.1"

  if Hardware::CPU.intel?
    url "https://account.wolfram.com/download/public/wolfram-player/#{version}/desktop/MAC/MAC_INTEL"
    sha256 "f9b595216ff09c939addc382b38016ddde67ae3104ec00302739417586af4ea9"
  else
    url "https://account.wolfram.com/download/public/wolfram-player/#{version}/desktop/MAC/MAC_ARM"
    sha256 "ca23f324b619f392f883c9a6c940ea399478b33b9ffaa7d8dd0409dd09f2bfbd"
  end

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
