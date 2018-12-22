cask 'tistoryeditor' do
  version '0.8.1'
  sha256 '48fb68bee8f4166f07e973370084ab43bd5c9af92f511d301cee04409a9dda01'

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
