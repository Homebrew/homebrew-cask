cask 'tistoryeditor' do
  version '0.8.2'
  sha256 'a1770c3a2d2abd369bb63f9776f31f19cdc36cec802c154414a6b9616f4418d2'

  # github.com/joostory/tistory-editor was verified as official when first introduced to the cask
  url "https://github.com/joostory/tistory-editor/releases/download/v#{version}/TistoryEditor-#{version}-mac.zip"
  appcast 'https://github.com/joostory/tistory-editor/releases.atom'
  name 'TistoryEditor'
  homepage 'https://tistory-editor.tistory.com/'

  app 'TistoryEditor.app'

  zap trash: [
               '~/Library/Preferences/net.joostory.tistory-editor.helper.plist',
               '~/Library/Preferences/net.joostory.tistory-editor.plist',
               '~/Library/Saved Application State/net.joostory.tistory-editor.savedState',
             ]
end
