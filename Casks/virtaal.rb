cask 'virtaal' do
  version '0.7.1b2'
  sha256 '41fec069ca06eb627c75b8d66460110b7970b0894e19df4f41510ac7b91bdbd0'

  # sourceforge.net/translate/Virtaal was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/translate/Virtaal/#{version.sub(%r{^(\d+\.\d+\.\d+).*}, '\1')}/Virtaal-#{version.sub(%r{^(\d+\.\d+\.\d+).*}, '\1')}-Mac-Beta-2.dmg"
  appcast 'https://sourceforge.net/projects/translate/rss?path=/Virtaal'
  name 'Virtaal'
  homepage 'https://virtaal.translatehouse.org/'

  app 'Virtaal.app'
end
