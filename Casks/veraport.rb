cask :v1 => 'veraport' do
  version :latest
  sha256 :no_check

<<<<<<< e6453c8a012ff9f27e642f0d50c29d98691cf50c
  url "https://open.citibank.co.kr/3rdParty/wizvera/veraport/down/veraport.pkg"
  name "VeraPort"
  homepage "https://open.citibank.co.kr"
=======
  url 'https://open.citibank.co.kr/3rdParty/wizvera/veraport/down/veraport.pkg'
  name 'VeraPort'
  homepage 'https://open.citibank.co.kr'
>>>>>>> fix bug: bad double quotes to single one
  license :gratis

  pkg 'veraport.pkg'
  uninstall :pkgutil => 'com.wizvera.veraport.veraport.*',
    :rmdir => '/Applications/Veraport'
end
