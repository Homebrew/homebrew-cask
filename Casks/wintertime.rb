cask 'wintertime' do
  version '0.0.6'
  sha256 '5cb5ef7b0ef92a95be7d72b60e77685d43a25a26b73aa34c37a07f183b283aca'

  url "https://github.com/actuallymentor/wintertime-mac-background-freezer/releases/download/#{version}/Wintertime-#{version}.dmg"
  appcast 'https://github.com/actuallymentor/wintertime-mac-background-freezer/releases.atom'
  name 'Wintertime'
  homepage 'https://github.com/actuallymentor/wintertime-mac-background-freezer'

  app 'Wintertime.app'
end
