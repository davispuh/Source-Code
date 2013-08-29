require 'date'
require_relative 'SomeRubyClass'

# Example module
module ExampleModule
    class ExampleClass
        attr_reader :InstanceArray

        protected
        # @param example_params [Array] just some array
        def initialize(example_params)
            @InstanceArray = example_params
            @InstanceArray << 4
        end

        public

        def to_s
            @InstanceArray.join(', ')
        end
    end

    class OtherClass < ExampleClass
        protected
        def initialize(example_params)
            super
            @@ClassArray = @InstanceArray
            @@ClassArray << 5
        end

        public

        def self.array
            @@ClassArray
        end
    end
end

class_a = ExampleModule::ExampleClass.new([1,2,3])
class_b = ExampleModule::OtherClass.new(class_a.InstanceArray)

class_a.InstanceArray << 6

puts "This [#{class_a.to_s}] is array\n%s" %
('Result is %{result}' % { result: (class_a.InstanceArray.first + ExampleModule::OtherClass.array.last)})

=begin
    This is long block comment.
    With some very interesting documentation.
=end
