cask 'there' do
  version '1.8.2'
  sha256 'c3670d01284abf5a8d627383178c189f586efa0a0d1f7cec270a2ef3854497bb'

  # github.com/therehq/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therehq/there-desktop/releases/download/v#{version}/There-#{version}-mac.zip"
  appcast 'https://github.com/therehq/there-desktop/releases.atom'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall signal: ['TERM', 'pm.there.desktop']
end
