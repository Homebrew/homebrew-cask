cask :v1 => 'triumph' do
  version :latest
  sha256 :no_check

  url 'http://www.audiofile-engineering.com/triumph/download/Triumph.dmg'
  homepage 'http://www.audiofile-engineering.com/triumph/'
  license :unknown

  app 'Triumph.app'
  app 'Triumph.app/Contents/Applications/DDP Player.app'
end
