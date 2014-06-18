class Things < Cask
  url 'https://culturedcode.com/things/download/'
  appcast 'http://downloads.culturedcode.com/things/download/Things_Updates.php'
  homepage 'http://culturedcode.com/things/'
  version 'latest'
  sha256 :no_check
  link 'Things.app'
end
