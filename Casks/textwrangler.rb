cask 'textwrangler' do
  if MacOS.release <= :lion
    version '4.5.12'
    sha256 'f25ce90a54570ee4fe2287cdbe5c8b2a57188423a3693becacfa0533f02e0aa2'

    url "http://pine.barebones.com/files/TextWrangler_#{version}.dmg"
  else
    version '5.5.1'
    sha256 '000f69d1433886e31c9e12168e3d4d7cd0d9c06873016f487f8dbbb7bfba425a'

    # amazonaws.com/BBSW-download was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/BBSW-download/TextWrangler_#{version}.dmg"
  end
  appcast 'https://versioncheck.barebones.com/TextWrangler.xml',
          checkpoint: '02c975f56071265422e1b0b0f0ae42dd26c88c3e6135b0938d14ed8dbb9744c5'
  name 'TextWrangler'
  homepage 'http://www.barebones.com/products/textwrangler/'
  license :gratis

  depends_on macos: '>= :snow_leopard'

  app 'TextWrangler.app'
  binary "#{appdir}/TextWrangler.app/Contents/Helpers/edit"
  binary "#{appdir}/TextWrangler.app/Contents/Helpers/twdiff"
  binary "#{appdir}/TextWrangler.app/Contents/Helpers/twfind"
end
