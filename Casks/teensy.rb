cask :v1 => 'teensy' do
  version '1.17'
  sha256 'da5a499303fb8f7ba95ff9f9a69b96f65280870ccff8f71d4dded00a5770f502'

  url 'https://www.pjrc.com/teensy/teensy.dmg'
  homepage 'http://pjrc.com/teensy/loader_mac.html'
  license :unknown

  app 'teensy.app'
end
