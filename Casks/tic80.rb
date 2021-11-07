cask "tic80" do
  # NOTE: "80" is not a version number, but an intrinsic part of the product name
  version "0.90.1723"
  sha256 "c72b1c51a97c44ddabd2b2d14597275c42e0aedef383de71a48495d8a22ae02e"

  url "https://github.com/nesbox/TIC-80/releases/download/v#{version}/tic80-v#{version.major_minor}-mac.dmg",
      verified: "github.com/nesbox/TIC-80/"
  name "TIC-80"
  desc "Fantasy computer for making, playing and sharing tiny games"
  homepage "https://tic80.com/"

  app "tic80.app"

  uninstall quit: "com.nesbox.tic"

  zap trash: [
    "~/Library/Application Support/com.nesbox.tic",
    "~/Library/Saved Application State/com.nesbox.tic.savedState",
  ]
end
