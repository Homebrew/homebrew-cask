cask 'tableedit' do
  version '1.3.0'
  sha256 'a2e558b272f24ee7bdbb053bceb07ba9644711a0e344756f44ccf3742c155e56'

  url "https://www.corecode.io/downloads/tableedit_#{version}.zip"
  appcast 'https://www.corecode.io/tableedit/tableedit.xml',
          checkpoint: 'f11827564699e7db4c695ea43c8b90acb66cd93407854f29f28fd321185aaac4'
  name 'TableEdit'
  homepage 'https://www.corecode.io/tableedit/'

  app 'TableEdit.app'

  zap trash: '~/Library/Containers/com.corecode.TableEdit'
end
