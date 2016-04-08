cask 'teensy' do
  version '1.26'
  sha256 'fe8fd6ff99a1f3e05989637f2cc35aa2d9dc03b4aeb7daee2fbcf2c1160337bd'

  url 'https://www.pjrc.com/teensy/teensy.dmg'
  name 'Teensy'
  homepage 'https://pjrc.com/teensy/loader_mac.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'teensy.app'
end
