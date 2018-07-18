cask 'yinxiangbiji' do
  version '8.1.1_456907'
  sha256 '307cf468c3e8af2a1977fceedc63fc32765b555a730413958b279875bad05d0c'
  
  # cdn.yinxiang.com/mac-smd/public was verified as official when first introduced to the cask
  url 'https://cdn.yinxiang.com/mac-smd/public/YinxiangBiji_RELEASE_#{version}.dmg'
  name '印象笔记'
  homepage 'https://www.yinxiang.com'
  
  auto_updates true
  
  app '印象笔记.app'
end
