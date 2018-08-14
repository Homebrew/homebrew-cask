cask 'tableedit' do
  version '1.4.1'
  sha256 'dce8e60e941a8761dcce189270f7fdb4da9710efb628f96d59240d16249b8cfe'

  url "https://www.corecode.io/downloads/tableedit_#{version}.zip"
  appcast 'https://www.corecode.io/tableedit/tableedit.xml'
  name 'TableEdit'
  homepage 'https://www.corecode.io/tableedit/'

  app 'TableEdit.app'

  zap trash: '~/Library/Containers/com.corecode.TableEdit'
end
