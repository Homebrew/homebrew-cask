cask 'vox' do
  version '2740.4,1457956405'
  sha256 '2a07ea6902d32e488c32f639a9c441bb4be1b089cb23d2edaad95ccf1d6d0830'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: 'a78481e3d555e5225c088dca4744e3f023b4edc69f0171a9cfcafbdf25cb7f15'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'Vox.app'
end
