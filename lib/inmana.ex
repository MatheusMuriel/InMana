# Aqui é um Design Pattner Facade que o InmanaWeb consegue enxergar
defmodule Inmana do
  alias Inmana.Restaurants.Create

  defdelegate create_restaurant(params), to: Create, as: :call
end
