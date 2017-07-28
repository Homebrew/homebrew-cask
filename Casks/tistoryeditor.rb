cask 'tistoryeditor' do
  version '0.3.8'
  sha256 '99fa1de036a3e30bff2bcdbf544b63d7dd9b3100e85aa52f46f4b615933eb6d7'

  # github.com/joostory/tistory-editor/ was verified as official when first introduced to the cask
  url "https://github.com/joostory/tistory-editor/releases/download/#{version}/TistoryEditor-#{version}-mac.zip"
  appcast 'https://github.com/joostory/tistory-editor/releases.atom',
          checkpoint: '456c0463cf2414e4b25949d13ec2cc8cb6a31a11e706ce6691db0d0ebd55ac4e'
  name 'TistoryEditor'
  homepage 'https://joostory.github.io/tistory-editor/'

  app 'TistoryEditor.app'

  zap delete: '~/Library/Saved Application State/net.joostory.tistory-editor.savedState',
      trash:  [
                '~/Library/Preferences/net.joostory.tistory-editor.helper.plist',
                '~/Library/Preferences/net.joostory.tistory-editor.plist',
              ]
end
