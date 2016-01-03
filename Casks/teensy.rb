cask 'teensy' do
  version '1.21'
  sha256 '8a273dc915afa5752b9283168819dc0191462d4bd7eb990748a87e90d4b9baa8'

  url 'https://www.pjrc.com/teensy/teensy.dmg'
  name 'Teensy'
  homepage 'https://pjrc.com/teensy/loader_mac.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'teensy.app'
end
