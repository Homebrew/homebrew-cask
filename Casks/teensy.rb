cask 'teensy' do
  version :latest
  sha256 :no_check

  url 'https://www.pjrc.com/teensy/teensy.dmg'
  name 'Teensy'
  homepage 'https://pjrc.com/teensy/loader_mac.html'

  app 'teensy.app'
end
