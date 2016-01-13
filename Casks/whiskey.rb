cask 'whiskey' do
  version '0.4.0'
  sha256 '27fa0798ac0c10821d5066ccc1f240714964d931548f61bca5da355277af6402'

  url 'http://usewhiskey.com/latest'
  appcast 'http://usewhiskey.com/appcast.xml',
          :checkpoint => '8ed356abbe036dbe99d6cb9e6a62bfeacb1387e9a03ab054446773bcb99cd439'
  name 'Whiskey'
  homepage 'http://usewhiskey.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Whiskey.app'
end
