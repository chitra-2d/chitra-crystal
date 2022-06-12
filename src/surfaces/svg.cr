module Chitra
  struct SvgSurface < Surface
    getter surface

    def initialize(@output_file, w, h)
      @surface = LibCairo.cairo_svg_surface_create(@output_file.to_unsafe, w, h)
    end

    def draw
      LibCairo.cairo_surface_finish(@surface)
    end
  end
end
