cask 'tapaal' do
  version '3.4.0'
  sha256 'e34ade264118bbce01b1d4835eff71161f7347f2be2baa88f41557bd7b45b766'

  url "http://www.tapaal.net/fileadmin/download/tapaal-#{version.major_minor}/tapaal-#{version}-mac64.dmg"
  appcast 'http://www.tapaal.net/',
          checkpoint: '0fcb1486bf83481d63dfeb827896adea9c64b5202db6c2e1d73d80ecb928ba12'
  name 'TAPAAL'
  homepage 'http://www.tapaal.net/'

  app 'Tapaal.app'
end
