cask 'tableedit' do
  version '1.4.2'
  sha256 '99250dcced22ae67ef01773342b40095f58dc963c296dded85f6cc98058e812e'

  url "https://www.corecode.io/downloads/tableedit_#{version}.zip"
  appcast 'https://www.corecode.io/tableedit/tableedit.xml'
  name 'TableEdit'
  homepage 'https://www.corecode.io/tableedit/'

  app 'TableEdit.app'

  zap trash: '~/Library/Containers/com.corecode.TableEdit'
end
