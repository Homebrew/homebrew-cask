cask 'triumph' do
  version :latest
  sha256 :no_check

  # audiofile-engineering.com/triumph/download was verified as official when first introduced to the cask
  url 'https://www.audiofile-engineering.com/triumph/download/Triumph.dmg'
  name 'Triumph'
  homepage 'https://triumph.aurchitect.com/'

  app 'Triumph.app'
end
