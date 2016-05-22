cask 'textbar' do
  version '1.10.87'
  sha256 '2191cc999e8ed55ea01214e6967202c8fb3e9e9ea207651a2a95ed7d9cdcb3c1'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: 'b77f9b0a4f46a4632fb710f930e7aa599d78abd5183cb9f2902012eefa063973'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'
  license :closed

  depends_on macos: '>= :mountain_lion'
  depends_on arch: :x86_64

  app 'TextBar.app'
end
