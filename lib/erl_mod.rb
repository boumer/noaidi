require "erl_mod/version"
require "erl_mod/module"
require "erl_mod/fun"

module ErlMod
  def self.define(&block)
    ErlMod::Module.new.tap do |mod|
      mod.instance_eval(&block)
    end
  end
end