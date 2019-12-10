cask 'tiat' do
  version '1.4.0'
  sha256 '79dd2eabb158996810cf534d239475fa10664c5a36e1f1fe3f298c1ca17ef65c'

  # storage.googleapis.com was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/alice-180810.appspot.com/Tiat-#{version}.dmg"
  appcast 'https://www.chthollystudio.com/tiat/getLatestDownloadURL/mac'
  name 'Tiat'
  homepage 'https://www.chthollystudio.com/tiat'

  app 'Tiat.app'
end
