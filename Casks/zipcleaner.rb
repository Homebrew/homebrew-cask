cask "zipcleaner" do
  version "1.0"
  sha256 "e4edf2869e715430a1e9ad442faee6c442d4fb5268b1b62f8ea6246abe456ed6"

  url "https://roger-jolly.nl/software/downloads/zipcleaner/ZipCleaner.zip"
  name "ZipCleaner"
  homepage "https://roger-jolly.nl/software/#zipcleaner"

  depends_on macos: "<= :mojave"

  app "ZipCleaner.app"
end
