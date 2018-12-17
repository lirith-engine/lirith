require "./macros"
module Lirith
  module Math
    struct TEuler(T) < TBase(T)
      @buffer : T*
      
      buffer_property :x, 0
      buffer_property :y, 1
      buffer_property :z, 2

      property order = "XYZ"

      def initialize(x, y, z, order = nil)
        @buffer = Pointer(T).malloc(3)
        set(x, y, z, order)
      end

      def set(x, y, z, order = nil)
        self.x = x
        self.y = y
        self.z = z
        @order = order || @order
      end

      def to_vector3
        TVector3(T).new(x, y, z)
      end

    end
  end
end