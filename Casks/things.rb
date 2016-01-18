cask 'things' do
  version :latest
  sha256 :no_check

  url "http://culturedcode.cachefly.net/things/Things_#{version}.zip"
  name 'Things'
  homepage 'https://culturedcode.com/things/'
  license :commercial

  app 'Things.app'
end
