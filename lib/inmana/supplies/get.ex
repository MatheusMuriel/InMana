defmodule Inmana.Supplies.Get do
  alias Inmana.{Repo, Supply}

  def call(uuid) do
    # Outro exemplo do uso de Pattner Match para controle de fluxo
    case Repo.get(Supply, uuid) do
      nil -> {:error, %{result: "Supply not found", status: :not_found}}
      supply -> {:ok, supply}
    end
  end
end
