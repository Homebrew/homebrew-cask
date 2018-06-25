cask 'tableedit' do
  version '1.4.0'
  sha256 'd1bd009eadec6e022de6dd1bd68aa410d250956299d33bfaab50059e818d8ed3'

  url "https://www.corecode.io/downloads/tableedit_#{version}.zip"
  appcast 'https://www.corecode.io/tableedit/tableedit.xml'
  name 'TableEdit'
  homepage 'https://www.corecode.io/tableedit/'

  app 'TableEdit.app'

  zap trash: '~/Library/Containers/com.corecode.TableEdit'
end
