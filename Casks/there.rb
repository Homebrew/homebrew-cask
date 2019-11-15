cask 'there' do
  version '1.8.5'
  sha256 'b325e842e9ebb2887248cd7bbc80ce386c21c2b67eb09fc7c54ca6af743e855d'

  # github.com/therehq/there-desktop was verified as official when first introduced to the cask
  url "https://github.com/therehq/there-desktop/releases/download/v#{version}/There-#{version}-mac.zip"
  appcast 'https://github.com/therehq/there-desktop/releases.atom'
  name 'There'
  homepage 'https://there.pm/'

  app 'There.app'

  uninstall signal: ['TERM', 'pm.there.desktop']
end
