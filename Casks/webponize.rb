cask 'webponize' do
  version :latest
  sha256 :no_check

  # github.com/1000ch/WebPonize was verified as official when first introduced to the cask
  url 'https://github.com/1000ch/WebPonize/raw/master/webponize.tar.gz'
  name 'WebPonize'
  homepage 'https://webponize.github.io/'

  app 'WebPonize.app'
end
