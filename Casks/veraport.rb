cask :v1 => 'veraport' do
  version :latest
  sha256 :no_check

  url 'https://open.citibank.co.kr/3rdParty/wizvera/veraport/down/veraport.pkg'
  name 'VeraPort'
  homepage 'https://open.citibank.co.kr'
  license :gratis

  pkg 'veraport.pkg'

  uninstall :pkgutil => 'com.wizvera.veraport.veraport.*',
            :rmdir => '/Applications/Veraport'
end
