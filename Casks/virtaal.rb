cask :v1 => 'virtaal' do
  version '0.7.1b2'
  sha256 '41fec069ca06eb627c75b8d66460110b7970b0894e19df4f41510ac7b91bdbd0'

  url "https://downloads.sourceforge.net/project/translate/Virtaal/#{version.sub(%r{^(\d+\.\d+\.\d+).*},'\1')}/Virtaal-#{version.sub(%r{^(\d+\.\d+\.\d+).*},'\1')}-Mac-Beta-2.dmg"
  homepage 'http://virtaal.translatehouse.org/'
  license :oss

  app 'Virtaal.app'
end
