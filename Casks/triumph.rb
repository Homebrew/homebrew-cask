cask v1: 'triumph' do
  version :latest
  sha256 :no_check

  url 'https://www.audiofile-engineering.com/triumph/download/Triumph.dmg'
  name 'Triumph'
  homepage 'https://www.audiofile-engineering.com/triumph/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Triumph.app'
  app 'Triumph.app/Contents/Applications/DDP Player.app'
end
