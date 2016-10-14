cask 'textwrangler' do
  if MacOS.version <= :lion
    version '4.5.12'
    sha256 'f25ce90a54570ee4fe2287cdbe5c8b2a57188423a3693becacfa0533f02e0aa2'

    url "http://pine.barebones.com/files/TextWrangler_#{version}.dmg"
  else
    version '5.5.2'
    sha256 '046aff569123d39782981f52d918a1b51f18caefca4ac0436dcc193edfd96c08'

    # amazonaws.com/BBSW-download was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/BBSW-download/TextWrangler_#{version}.dmg"
  end
  appcast 'https://versioncheck.barebones.com/TextWrangler.xml',
          checkpoint: 'f758c48e9e25d15e0d34310b000e1b0a3c90a4dfa200519a0e86f6e785f6d41c'
  name 'TextWrangler'
  homepage 'http://www.barebones.com/products/textwrangler/'

  depends_on macos: '>= :snow_leopard'

  app 'TextWrangler.app'
  binary "#{appdir}/TextWrangler.app/Contents/Helpers/edit"
  binary "#{appdir}/TextWrangler.app/Contents/Helpers/twdiff"
  binary "#{appdir}/TextWrangler.app/Contents/Helpers/twfind"
end
