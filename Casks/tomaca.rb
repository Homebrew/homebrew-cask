cask 'tomaca' do
  version '1.1.0'
  sha256 :no_check

  url "https://github.com/tonipenya/tomaca/releases/download/#{version}/Tomaca.zip"
  appcast 'https://github.com/tonipenya/tomaca/releases.atom'
  name 'Tomaca'
  homepage 'https://github.com/tonipenya/tomaca'

  app 'Tomaca.app'
end
