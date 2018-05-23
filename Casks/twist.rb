cask 'twist' do
  version '1.0.34,4244'
  sha256 '4f0c34bbb92445b789711f62420cda61792462b5c5642820f3453ef35e066e20'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml',
          checkpoint: '6d0c58dca0c7120a9ca4e32defa152c89cc8f0dd11aa20875f53513768fdd7f6'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
