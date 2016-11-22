cask 'upwork' do
  version '4_2_88_0_zjqu5h1eh5fvxz5t'
  sha256 '4c321f521f2f42e0cd001a98274b99ea9b269ad8fc5334403c4065667ce56677'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version}/Upwork.dmg"
  name 'Upwork'
  homepage 'https://www.upwork.com/'

  app 'Upwork.app'
end
