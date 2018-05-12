cask 'terminus' do
  version '1.0.0-alpha.46'
  sha256 '291de808b0b0be8cd1a298f24cdaacdeaccc44baa9557eecd4f448f1bf6f38a1'

  # github.com/Eugeny/terminus was verified as official when first introduced to the cask
  url "https://github.com/Eugeny/terminus/releases/download/v#{version}/Terminus-#{version}.dmg"
  appcast 'https://github.com/Eugeny/terminus/releases.atom',
          checkpoint: 'db1cebef8752310d86b9aae4df98d3f027d2d961ae69f4f9bd94847286c94ec7'
  name 'Terminus'
  homepage 'https://eugeny.github.io/terminus/'

  app 'Terminus.app'

  zap trash: [
               '~/Library/Application Support/terminus',
               '~/Library/Preferences/org.terminus.helper.plist',
               '~/Library/Preferences/org.terminus.plist',
               '~/Library/Saved Application State/org.terminus.savedState',
             ]
end
