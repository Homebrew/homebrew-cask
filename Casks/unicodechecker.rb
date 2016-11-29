cask 'unicodechecker' do
  version '1.18'
  sha256 '750feb1262a3a40e35b8c7b3b13e53cf16f5caf15abc35f2ba029dbe5a0103db'

  url 'https://earthlingsoft.net/UnicodeChecker/UnicodeChecker.zip'
  appcast 'https://earthlingsoft.net/UnicodeChecker/appcast.xml',
          checkpoint: '2fd58d75b6fa36b0fa9938048167d12e4e469c08a383b70c6f3fb4f101f9c729'
  name 'UnicodeChecker'
  homepage 'https://earthlingsoft.net/UnicodeChecker/'

  app "UnicodeChecker #{version}/UnicodeChecker.app"
end
