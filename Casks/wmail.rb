cask 'wmail' do
  version '2.2.0'
  sha256 'dfd33d0c40d600043f507b64c027cf0f2f34ae189c31c33667aa63ff5b366b5c'

  # github.com/Thomas101/wmail was verified as official when first introduced to the cask
  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}_osx.dmg"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: '1287488a9a4d771b86ecb667eef9b44eb0a50a558ccfcc9fb8e76c137c73e2bd'
  name 'WMail'
  homepage 'https://thomas101.github.io/wmail/'

  app 'WMail.app'
end
