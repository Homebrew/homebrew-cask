cask 'things' do
  version :latest
  sha256 :no_check

  url 'https://culturedcode.com/things/download/'
  appcast 'https://downloads.culturedcode.com/things/download/Things_Updates.php',
          :sha256 => '3b45490fd3b1591436cf469e87b7d131eff3c96838bdaee744bcc89403e53502'
  name 'Things'
  homepage 'https://culturedcode.com/things/'
  license :commercial

  app 'Things.app'
end
