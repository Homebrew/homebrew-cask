cask 'telavox-flow' do
  version '1.93.0'
  sha256 'f268679417ddba3c901f2a607381cf93ff3ca4ca9a09e6602c9357f9c8907f8a'

  # amazonaws.com/flow-desktop/Flow-1.93.0.dmg was verified as official when first introduced to the cask
  url 'https://s3.eu-west-2.amazonaws.com/flow-desktop/Flow-1.93.0.dmg'
  name 'Telavox-Flow'
  homepage 'https://telavox.com/en/apps/'

  app 'Flow.app'
end
