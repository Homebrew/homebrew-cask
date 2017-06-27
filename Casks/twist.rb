cask 'twist' do
  version '1.0.10,2864'
  sha256 'a8b69af53e4fad7f52aabc069494cfbc19a11676f5572ca0c6b02c2779431c2e'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml',
          checkpoint: 'c4295d2b33f520788c4b33cdc8d7678fd25b95def1315a1090f5f8a160af915f'
  name 'Twist'
  homepage 'https://twistapp.com/'

  app 'Twist.app'
end
