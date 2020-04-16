cask 'uberconference' do
  version :latest
  sha256 :no_check

  url "https://storage.googleapis.com/uc_native/osx/UberConference.dmg"
  name 'UberConference'
  homepage 'https://www.uberconference.com/'

  app 'UberConference.app'
end
