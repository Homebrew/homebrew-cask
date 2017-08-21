cask 'tistoryeditor' do
  version '0.3.9'
  sha256 '358b730cd8d5cb372e0b59cc737fec7e4f2bc26de59bcb00790690e386ba2def'

  # github.com/joostory/tistory-editor/ was verified as official when first introduced to the cask
  url "https://github.com/joostory/tistory-editor/releases/download/#{version}/TistoryEditor-#{version}-mac.zip"
  appcast 'https://github.com/joostory/tistory-editor/releases.atom',
          checkpoint: '4aee7565d8afdb70673547fa35972a95d922c6f4dceb6ea7c8ba5fd80b775031'
  name 'TistoryEditor'
  homepage 'https://joostory.github.io/tistory-editor/'

  app 'TistoryEditor.app'

  zap delete: '~/Library/Saved Application State/net.joostory.tistory-editor.savedState',
      trash:  [
                '~/Library/Preferences/net.joostory.tistory-editor.helper.plist',
                '~/Library/Preferences/net.joostory.tistory-editor.plist',
              ]
end
