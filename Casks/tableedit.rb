cask 'tableedit' do
  version '1.2.9'
  sha256 '980299dde4715a27e3abeac8c7c03efbca117b92029f6c1df69bcea1b6e517cb'

  url "https://www.corecode.io/downloads/tableedit_#{version}.zip"
  appcast 'https://www.corecode.io/tableedit/tableedit.xml',
          checkpoint: '14389e6c97afa5886c16935ba61f67bd9d4efb3ad28de0daf4355b66066dd4b6'
  name 'TableEdit'
  homepage 'https://www.corecode.io/tableedit/'

  app 'TableEdit.app'

  zap trash: '~/Library/Containers/com.corecode.TableEdit'
end
