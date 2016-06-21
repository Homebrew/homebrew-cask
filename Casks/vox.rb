cask 'vox' do
  version '2810.4,1466441784'
  sha256 '51d86fdc3384be9b9516f007b9ad32a329cdb96973dd05aed05fb18d9b793730'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '6fba4fdb1d14b8004e9e820623bc89b864ab57519dce7678a22b3656699aab80'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'Vox.app'
end
