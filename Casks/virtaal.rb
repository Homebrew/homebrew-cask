cask 'virtaal' do
  version '0.7.1b2'
  sha256 '41fec069ca06eb627c75b8d66460110b7970b0894e19df4f41510ac7b91bdbd0'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/translate/Virtaal/#{version.sub(%r{^(\d+\.\d+\.\d+).*}, '\1')}/Virtaal-#{version.sub(%r{^(\d+\.\d+\.\d+).*}, '\1')}-Mac-Beta-2.dmg"
  name 'Virtaal'
  homepage 'http://virtaal.translatehouse.org/'
  license :gpl

  app 'Virtaal.app'
end
