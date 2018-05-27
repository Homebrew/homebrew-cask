cask 'tistoryeditor' do
  version '0.6.9'
  sha256 'c52327c39467667cc463a372048c10d4470ebdfafcf8aa5ea2b78fc2606e5a97'

  # github.com/joostory/tistory-editor/ was verified as official when first introduced to the cask
  url "https://github.com/joostory/tistory-editor/releases/download/v#{version}/TistoryEditor-#{version}-mac.zip"
  appcast 'https://github.com/joostory/tistory-editor/releases.atom',
          checkpoint: 'f4d423282ad1a0d75dd454afb736408e697a289ca93a5b41f4c6b42b5e5269ee'
  name 'TistoryEditor'
  homepage 'http://tistory-editor.tistory.com/'

  app 'TistoryEditor.app'

  zap trash: [
               '~/Library/Preferences/net.joostory.tistory-editor.helper.plist',
               '~/Library/Preferences/net.joostory.tistory-editor.plist',
               '~/Library/Saved Application State/net.joostory.tistory-editor.savedState',
             ]
end
