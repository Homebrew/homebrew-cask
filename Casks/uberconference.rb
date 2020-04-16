cask 'uberconference' do
  version :latest
  sha256 :no_check

  # storage.googleapis.com was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/uc_native/osx/UberConference.dmg'
  name 'UberConference'
  homepage 'https://www.uberconference.com/'

  app 'UberConference.app'
end
