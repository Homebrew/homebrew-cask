require "hbc/artifact/base"

class Hbc::Artifact::AbstractFlightBlock < Hbc::Artifact::Base
  def self.artifact_dsl_key
    super.to_s.sub(%r{_block$}, "").to_sym
  end

  def self.uninstall_artifact_dsl_key
    artifact_dsl_key.to_s.prepend("uninstall_").to_sym
  end

  def self.class_for_dsl_key(dsl_key)
    Object.const_get("Hbc::DSL::#{dsl_key.to_s.split('_').collect(&:capitalize).join}")
  end

  def self.me?(cask)
    cask.artifacts[artifact_dsl_key].any? ||
      cask.artifacts[uninstall_artifact_dsl_key].any?
  end

  def install_phase
    abstract_phase(self.class.artifact_dsl_key)
  end

  def uninstall_phase
    abstract_phase(self.class.uninstall_artifact_dsl_key)
  end

  private

  def abstract_phase(dsl_key)
    @cask.artifacts[dsl_key].each do |block|
      self.class.class_for_dsl_key(dsl_key).new(@cask).instance_eval(&block)
    end
  end
end
