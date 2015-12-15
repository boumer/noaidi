module ErlMod
  NoBlockGiven = Class.new(StandardError)
  
  class Module
    def initialize
      @funs = {}
    end

    def fun(name, args=[], &block)
      raise NoBlockGiven unless block_given?
      name = name.to_sym
      @funs[name] ||= []
      @funs[name] << Fun.new(name, args, block)
    end

    def inspect_funs
      @funs.inspect
    end

    def method_missing(name, *args)
      find_best_method(name).call(args)
    end

    private
    def find_best_method(name)
      @funs[name].first
    end
  end
end
