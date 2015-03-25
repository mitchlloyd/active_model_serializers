module ActiveModel
  class Serializer
    class PrimitiveSerializer < Serializer
      def self.can_serialize?(value)
        [:to_str, :to_int, :to_hash].detect do |meth|
          value.respond_to?(meth)
        end
      end

      def attributes(*)
        object
      end
    end
  end
end
