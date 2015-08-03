<<<<<<< 8be0cef3357e03f17201782ad9544d122a666d3a
cask :v1 => 'veraport' do
=======
cask :v1 => "veraport" do
>>>>>>> add cask files: aos-firewall.rb, cross-web.rb, ip-inside-agent-citi.rb, ip-inside-agent-hana.rb, veraport.rb, xecure-web-unified.rb
  version :latest
  sha256 :no_check

  url "https://open.citibank.co.kr/3rdParty/wizvera/veraport/down/veraport.pkg"
<<<<<<< 8be0cef3357e03f17201782ad9544d122a666d3a
  name 'VeraPort'
=======
  name "VeraPort"
>>>>>>> add cask files: aos-firewall.rb, cross-web.rb, ip-inside-agent-citi.rb, ip-inside-agent-hana.rb, veraport.rb, xecure-web-unified.rb
  homepage "https://open.citibank.co.kr"
  license :gratis

  pkg "veraport.pkg"
<<<<<<< 8be0cef3357e03f17201782ad9544d122a666d3a
  uninstall :pkgutil => "com.wizvera.veraport.veraport.*",
    :rmdir => "/Applications/Veraport"
=======
  uninstall :script => "/Applications/Veraport/Uninstaller.app/Contents/MacOS/Uninstaller"
>>>>>>> add cask files: aos-firewall.rb, cross-web.rb, ip-inside-agent-citi.rb, ip-inside-agent-hana.rb, veraport.rb, xecure-web-unified.rb
end
