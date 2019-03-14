cask 'wintertime' do
  version '0.0.1'
  sha256 '0c056dcfb6b9fe90e3708935b7b88bdb1568764ac9f50107a407eb18e91f713e'

  url 'https://github.com/actuallymentor/wintertime-mac-background-freezer/releases/download/0.0.2/Wintertime-0.0.2.dmg'
  appcast 'https://github.com/actuallymentor/wintertime-mac-background-freezer/releases.atom'
  name 'Wintertime'
  homepage 'https://github.com/actuallymentor/wintertime-mac-background-freezer'

  app 'Wintertime.app'
end
