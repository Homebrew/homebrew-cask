cask 'wmail' do
  version '1.2.0'
  sha256 '44a3fe2a414c08412085b4d058aba8eb79c48ca1f20eb562770f2a54e7fa5da3'

  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}_osx.zip"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: 'a62fd9749579f45c20dd388777f94864c3f85f476008b3cdcc73262ee0fa0065'
  name 'WMail'
  homepage 'https://github.com/Thomas101/wmail'
  license :mit

  app 'WMail.app'
end
