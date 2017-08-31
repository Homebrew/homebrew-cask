cask 'twist' do
  version '1.0.14,3053'
  sha256 '0ab4a357d2492d1b29e3bedf1147a0eac09440a05d99693823d3642ab77a118f'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml',
          checkpoint: 'ef6e6a0ab4aa1d5671c8e7fb6358a9fab4ad0beb6d76a54efde56fd5ee2ade15'
  name 'Twist'
  homepage 'https://twistapp.com/'

  app 'Twist.app'
end
