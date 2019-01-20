cask 'tistoryeditor' do
  version '0.9.1'
  sha256 '12e132df1dfd9aa1b8b0679bf495f7397032506ece96b0e2b9da45e817ba57b8'

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
