<<<<<<< 62d593f143f615aa1ca8c0bfb6112ca3492e295c
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
=======
cask :v1 => "veraport" do
  version :latest
  sha256 :no_check

  url "https://open.citibank.co.kr/3rdParty/wizvera/veraport/down/veraport.pkg"
  name "VeraPort"
  homepage "https://open.citibank.co.kr"
  license :gratis

  pkg "veraport.pkg"
  uninstall :script => "/Applications/Veraport/Uninstaller.app/Contents/MacOS/Uninstaller"
>>>>>>> add cask files: aos-firewall.rb, cross-web.rb, ip-inside-agent-citi.rb, ip-inside-agent-hana.rb, veraport.rb, xecure-web-unified.rb
end
