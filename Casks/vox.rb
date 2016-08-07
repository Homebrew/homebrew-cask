cask 'vox' do
  version '2810.6,1466704048'
  sha256 '34dd198e7ad10ca543aaea644be450c66758e64f0034d377e9864c2e262d094e'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: 'fffc16ccbe21909e29645f197a7416a0728d6969e466e026c73f860510bf6495'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'Vox.app'
end
