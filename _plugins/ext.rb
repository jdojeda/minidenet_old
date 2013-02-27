require "jekyll-assets"
require "less"
require "yui/compressor"
 
module TextFilter
  def spanishDate(input)
    spanish_months = "Casual|Enero|Febrero|Marzo|Abril|Mayo|Junio|Julio|Agosto|Septiembre|Octubre|Noviembre|Diciembre".split("|")
  input.strftime("%e de #{spanish_months[input.strftime('%-m').to_i]} de %Y")
  end
end
 
Liquid::Template.register_filter(TextFilter)