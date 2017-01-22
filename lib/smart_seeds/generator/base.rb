# Available types of AR model are: :binary, :boolean, :date, :datetime, :decimal, :float, :integer, :string, :text, :time
# There are generators for all of these types, for example SmartSeeds::Generator::Integer

module SmartSeeds
  module Generator
    class Base
      def initialize(column, model)
        @column = column
        @model = model
      end

      # Get class name of specific generator and execute generate value method
      def generate_value
        if is_comatible_with_faker?
          generate_via_faker
        else
          begin
            klass = "SmartSeeds::Generator::#{column.type.to_s.capitalize}".constantize
            klass.new(column, model).generate_value
          rescue Exception => e
            puts e.inspect
          end
        end
      end

      protected

      attr_reader :column, :model

      def is_comatible_with_faker?
        SmartSeeds::Generator::Faker.new(column, model).is_compatible?
      end

      def generate_via_faker
        SmartSeeds::Generator::Faker.new(column, model).generate_value
      end
    end
  end
end