<<<<<<< 6b116affcb776a8af58df97fa3186be745d97fbf
cask :v1 => 'veraport' do
=======
cask :v1 => "veraport" do
>>>>>>> add cask files: aos-firewall.rb, cross-web.rb, ip-inside-agent-citi.rb, ip-inside-agent-hana.rb, veraport.rb, xecure-web-unified.rb
  version :latest
  sha256 :no_check

  url "https://open.citibank.co.kr/3rdParty/wizvera/veraport/down/veraport.pkg"
<<<<<<< 6b116affcb776a8af58df97fa3186be745d97fbf
  name 'VeraPort'
=======
  name "VeraPort"
>>>>>>> add cask files: aos-firewall.rb, cross-web.rb, ip-inside-agent-citi.rb, ip-inside-agent-hana.rb, veraport.rb, xecure-web-unified.rb
  homepage "https://open.citibank.co.kr"
  license :gratis

  pkg "veraport.pkg"
<<<<<<< 6b116affcb776a8af58df97fa3186be745d97fbf
  uninstall :pkgutil => "com.wizvera.veraport.veraport.*",
    :rmdir => "/Applications/Veraport"
=======
  uninstall :script => "/Applications/Veraport/Uninstaller.app/Contents/MacOS/Uninstaller"
>>>>>>> add cask files: aos-firewall.rb, cross-web.rb, ip-inside-agent-citi.rb, ip-inside-agent-hana.rb, veraport.rb, xecure-web-unified.rb
end
