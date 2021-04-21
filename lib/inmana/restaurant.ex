defmodule Inmana.Restaurant do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  # @ Define uma Variavel de Modulo
  @required_params [:email, :name]

  @derive {Jason.Encoder, only: @required_params ++ [:id]}

  schema "restaurants" do
    field :email, :string
    field :name, :string

    timestamps()
  end

  def changeset(params) do
    # Criando uma "Structure" do modulo
    %__MODULE__{}
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:name, min: 2)
    # Regex usando Sigils
    |> validate_format(:email, ~r/@/)
    |> unique_constraint([:email])
  end
end
