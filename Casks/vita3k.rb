cask "vita3k" do
  version "0.1"
  sha256 :no_check

  url "https://github.com/Vita3K/Vita3K/releases/download/continuous/macos-latest.zip",
      verified: "https://github.com/Vita3K/Vita3K/"
  name "Vita3K"
  desc "World's first functional PlayStation Vita emulator"
  homepage "https://vita3k.org/"

  app "Vita3K.app"
end
