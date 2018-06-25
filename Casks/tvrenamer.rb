cask 'tvrenamer' do
  version '0.8'
  sha256 'fa250e1641d473d5ece9959c8f3091ab18ad9eddb5a6bccb062212c84cc6aca8'

  # github.com/tvrenamer/tvrenamer was verified as official when first introduced to the cask
  url "https://github.com/tvrenamer/tvrenamer/releases/download/v#{version}/TVRenamer-#{version}-osx64.zip"
  appcast 'https://github.com/tvrenamer/tvrenamer/releases.atom'
  name 'TVRenamer'
  homepage 'http://tvrenamer.org/'

  app "TVRenamer-#{version}.app"

  caveats do
    depends_on_java
  end
end
