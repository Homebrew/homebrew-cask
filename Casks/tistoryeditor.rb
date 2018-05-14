cask 'tistoryeditor' do
  version '0.6.4'
  sha256 '30d9a5254c7854e087f1d169012bfc78eab55ca1cf20c1fccf318fbe3e75abaf'

  # github.com/joostory/tistory-editor/ was verified as official when first introduced to the cask
  url "https://github.com/joostory/tistory-editor/releases/download/v#{version}/TistoryEditor-#{version}-mac.zip"
  appcast 'https://github.com/joostory/tistory-editor/releases.atom',
          checkpoint: '530ae378fa6d4e7ccb9fc41358f962244b9455554b84162fa66b9a310e3091e6'
  name 'TistoryEditor'
  homepage 'http://tistory-editor.tistory.com/'

  app 'TistoryEditor.app'

  zap trash: [
               '~/Library/Preferences/net.joostory.tistory-editor.helper.plist',
               '~/Library/Preferences/net.joostory.tistory-editor.plist',
               '~/Library/Saved Application State/net.joostory.tistory-editor.savedState',
             ]
end
