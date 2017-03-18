cask 'writefull' do
  version :latest
  sha256 :no_check

  # d3aw1w08kaciwn.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d3aw1w08kaciwn.cloudfront.net/Writefull.dmg'
  name 'Writefull'
  homepage 'https://writefullapp.com/'

  app 'Writefull.app'
end
