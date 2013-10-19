module Cask::CLI::Create
  def self.run(*arguments)
    cask_name, *_ = *arguments
    cask_path = Cask.path(cask_name)
    url, version, sha, link

    if cask_path.exist?
      raise CaskAlreadyCreatedError.new cask_name
    end

    File.open(cask_path, 'w') do |f|

    if ARGV.include "--url"
      url = ARGV.named.first
      version = ARGV.next if ARGV.include? '--set-version'
      name = ARGV.next if ARGV.include? '--set-name'

      # download
      download = Cask::Download.new(@cask)
      @downloaded_path = download.perform

      # extract
      FileUtils.mkdir_p @cask.destination_path
      container = Cask::Container.for_path(@downloaded_path, @command)
      unless container
        raise "uh oh, could not identify container for #{@downloaded_path}"
      end
      container.new(@cask, @downloaded_path, @command).extract

      # TODO: Calculate the Sha, find .app for link
    end
 
    f.write template(cask_name)
    ohai "Success! #{@cask_name} template generated in #{@f.destination_path}"

    end

    exec_editor cask_path
  end

  def self.template(cask_name);
    cask_class = cask_name.split('-').map(&:capitalize).join
    <<-EOS.undent
      class #{cask_class} < Cask
        url '#{url}'
        homepage ''
        version '#{version}'
        sha1 '#{sha}'
        link '#{link}'
      end
    EOS
  end

  def self.help
    "creates a cask of the given name and opens it in an editor"
  end
end

