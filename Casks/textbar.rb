cask 'textbar' do
  version '2.0.360'
  sha256 'fece30698bb19a42172bc41e68f0fefcebcd6c5a0486cc7c6127eeef645aa9bf'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: '959a0813074bb97034391500c6bfe6363f319acb5f0b3dbc854405b0f159e61b'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'

  depends_on macos: '>= :mountain_lion'

  app 'TextBar.app'
end
