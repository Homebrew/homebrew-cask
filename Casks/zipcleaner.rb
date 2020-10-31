cask "zipcleaner" do
  version "1.1.0"
  sha256 "bfdb7d451bc2b0e8f65711e09690dc4527ed924f0d187e4c7eacd0d824e24c58"

  url "https://github.com/AmigaAbattoir/ZipCleaner/releases/download/V#{version}/ZipCleaner.app.zip"
  appcast "https://github.com/AmigaAbattoir/ZipCleaner/releases.atom"
  name "ZipCleaner"
  homepage "https://github.com/AmigaAbattoir/ZipCleaner"

  app "ZipCleaner.app"
end
