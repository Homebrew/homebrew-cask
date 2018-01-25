cask 'tistoryeditor' do
  version '0.5.6'
  sha256 'd73dcc115af9b2ebceab7bac56288bb543ae003a02e526627dbc2f2b46b79024'

  # github.com/joostory/tistory-editor/ was verified as official when first introduced to the cask
  url "https://github.com/joostory/tistory-editor/releases/download/#{version}/TistoryEditor-#{version}-mac.zip"
  appcast 'https://github.com/joostory/tistory-editor/releases.atom',
          checkpoint: '081baf361822777fe8444969f0c1644c23bfe17d8c983f9bd377726a6168f4b3'
  name 'TistoryEditor'
  homepage 'https://joostory.github.io/tistory-editor/'

  app 'TistoryEditor.app'

  zap trash: [
               '~/Library/Preferences/net.joostory.tistory-editor.helper.plist',
               '~/Library/Preferences/net.joostory.tistory-editor.plist',
               '~/Library/Saved Application State/net.joostory.tistory-editor.savedState',
             ]
end
