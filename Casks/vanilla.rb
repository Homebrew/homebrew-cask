cask 'vanilla' do
  version '1.1.1,28:1538098125'
  sha256 '5a45910f4ea99078884d7cd99563cb19b1cd0c9bda8e120111a235188f121881'

  # devmate.com/net.matthewpalmer.Vanilla was verified as official when first introduced to the cask
  url "https://dl.devmate.com/net.matthewpalmer.Vanilla/#{version.after_comma.before_colon}/#{version.after_colon}/Vanilla-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/net.matthewpalmer.Vanilla.xml'
  name 'Vanilla'
  homepage 'https://matthewpalmer.net/vanilla/'

  depends_on macos: '>= :sierra'

  app 'Vanilla.app'
end
