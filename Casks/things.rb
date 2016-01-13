cask 'things' do
  version :latest
  sha256 :no_check

  url 'https://culturedcode.com/things/download/'
  appcast 'https://downloads.culturedcode.com/things/download/Things_Updates.php',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Things'
  homepage 'https://culturedcode.com/things/'
  license :commercial

  app 'Things.app'
end
