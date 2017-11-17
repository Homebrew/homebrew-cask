cask 'tistoryeditor' do
  version '0.5.4'
  sha256 '506f314619abf37d73ddc0593af2dccb50164b96184dee3f4d8cc5ce7d82c0da'

  # github.com/joostory/tistory-editor/ was verified as official when first introduced to the cask
  url "https://github.com/joostory/tistory-editor/releases/download/#{version}/TistoryEditor-#{version}-mac.zip"
  appcast 'https://github.com/joostory/tistory-editor/releases.atom',
          checkpoint: 'be5341d25533aedf7c89061d92ceb1525b777a2b5ca069c494623f4efbbbead8'
  name 'TistoryEditor'
  homepage 'https://joostory.github.io/tistory-editor/'

  app 'TistoryEditor.app'

  zap delete: '~/Library/Saved Application State/net.joostory.tistory-editor.savedState',
      trash:  [
                '~/Library/Preferences/net.joostory.tistory-editor.helper.plist',
                '~/Library/Preferences/net.joostory.tistory-editor.plist',
              ]
end
