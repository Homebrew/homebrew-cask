cask 'tableedit' do
  version '1.3.5'
  sha256 '84920d15ecf3b3a6b8acba95ee45512506d272d4f806cc31242c3b6837c86ec0'

  url "https://www.corecode.io/downloads/tableedit_#{version}.zip"
  appcast 'https://www.corecode.io/tableedit/tableedit.xml',
          checkpoint: '4fdc819e857d26f8bb50a5890e94000a70df18a84b5e8f228f84d236c2268135'
  name 'TableEdit'
  homepage 'https://www.corecode.io/tableedit/'

  app 'TableEdit.app'

  zap trash: '~/Library/Containers/com.corecode.TableEdit'
end
