cask "yandex-cloud-cli" do
  version :latest
  sha256 :no_check

  # yandexcloud.net/yandexcloud-yc/ was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/yandexcloud-yc/install.sh"
  name "Yandex Cloud CLI"
  homepage "https://cloud.yandex.com/docs/cli/"

  installer script: {
    executable: "install.sh",
    args:       ["-i", "#{staged_path}/#{token}", "-n"],
  }
  installer script: {
    executable: "yandex-cloud-cli/bin/yc",
    args:       ["components", "post-update"],
  }
  binary "yandex-cloud-cli/bin/docker-credential-yc"
  binary "yandex-cloud-cli/bin/yc"

  uninstall delete: "#{staged_path}/#{token}"

  caveats <<~EOS
    To install shell completions add this to your profile:

      for bash users
        source "#{staged_path}/#{token}/completion.bash.inc"

      for zsh users
        source "#{staged_path}/#{token}/completion.zsh.inc"
  EOS
end
