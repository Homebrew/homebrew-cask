class Hbc::Artifact::Moved < Hbc::Artifact::Base
  ALT_NAME_ATTRIBUTE = 'com.apple.metadata:kMDItemAlternateNames'

  attr_reader :source, :target

  def english_name
    self.class.artifact_english_name
  end

  def summary
    contents = @cask.artifacts[self.class.artifact_dsl_key].map do |artifact|
      summarize_artifact(artifact)
    end - [nil]

    {
      :english_description => "#{english_name}s managed by brew-cask:",
      :contents => contents
    }
  end

  def install_phase
    each_artifact do |artifact|
      load_specification(artifact)
      next unless preflight_checks
      move
    end
  end

  def uninstall_phase
    each_artifact do |artifact|
      load_specification(artifact)
      next unless File.exist?(target)
      delete
    end
  end

  private

  def each_artifact
    # the sort is for predictability between Ruby versions
    @cask.artifacts[self.class.artifact_dsl_key].sort.each do |artifact|
      yield artifact
    end
  end

  def move
    ohai "Moving #{english_name} '#{source.basename}' to '#{target}'"
    target.dirname.mkpath
    FileUtils.move(source, target)
  end

  def load_specification(artifact_spec)
    source_string, target_hash = artifact_spec
    raise Hbc::CaskInvalidError if source_string.nil?
    @source = @cask.staged_path.join(source_string)
    if target_hash
      raise Hbc::CaskInvalidError unless target_hash.respond_to?(:keys)
      target_hash.assert_valid_keys(:target)
      @target = Hbc.send(self.class.artifact_dirmethod).join(target_hash[:target])
    else
      @target = Hbc.send(self.class.artifact_dirmethod).join(source.basename)
    end
  end

  def preflight_checks
    if target.exist?
      ohai "It seems there is already #{self.class.artifact_english_article} #{english_name} at '#{target}'; not moving."
      return false
    end
    unless source.exist?
      message = "It seems the #{english_name} source is not there: '#{source}'"
      raise Hbc::CaskError.new(message)
    end
    true
  end

  def delete
    ohai "Removing #{english_name}: '#{target}'"
    target.rmtree
  end

  def summarize_artifact(artifact_spec)
    load_specification artifact_spec
    printable_target = "'#{target}'"
    printable_target.sub!(%r{^'#{ENV['HOME']}/*}, "~/'")

    unless target.exist?
      warning = "Missing #{english_name}"
      warning = "#{Tty.red.underline}#{warning}#{Tty.reset}: "
    end

    "#{warning}#{printable_target}"
  end
end
