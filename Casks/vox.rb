cask 'vox' do
  version '2730.1,1455479596'
  sha256 '73afdc0f72a00b1b3721ace45acff7302ed79f08b593d61eb51f9a8823b4d6f2'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '4fae7195b8a22398ac7b750bb4fa404a600b5c0655d8ac8466018dd23810ad7c'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'Vox.app'
end
