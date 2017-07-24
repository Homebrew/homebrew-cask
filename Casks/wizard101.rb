cask 'wizard101' do
  version '1.11'
  sha256 '798275e58e986ad7e7ee917987d49d4d398ced9c1917885d5b516a24b970ae17'

  url 'http://versionec.us.wizard101.com/Wizard101.dmg'
  appcast 'http://versionec.us.wizard101.com/Wizard101.xml',
          checkpoint: '80b9b93fc2b08d9526c963e6d71ca92a4e7d97f44a0d2e8cb96c62d210ad5abe'
  name 'Wizard101'
  homepage 'https://www.wizard101.com/'

  app 'Wizard101.app'
end
