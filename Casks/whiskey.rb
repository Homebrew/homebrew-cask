cask 'whiskey' do
  version '0.4.0'
  sha256 '27fa0798ac0c10821d5066ccc1f240714964d931548f61bca5da355277af6402'

  url 'http://usewhiskey.com/latest'
  appcast 'http://usewhiskey.com/appcast.xml',
          :sha256 => '7ed688377dff74817a7de04a52fb93b41a97f0ebd87cb6db92752f9fa7d5962c'
  name 'Whiskey'
  homepage 'http://usewhiskey.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Whiskey.app'
end
