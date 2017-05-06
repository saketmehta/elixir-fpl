defmodule FPL.PlayerType do
  use Ecto.Schema

  schema "player_types" do
    field :singular_name, :string
    field :singular_name_short, :string
    field :plural_name, :string
    field :plural_name_short, :string

    has_many :players, FPL.Player
  end

  def changeset(player_type, params \\ %{}) do
    player_type
    |> Ecto.Changeset.cast(params, [:singular_name, :singular_name_short, :plural_name, :plural_name_short])
    |> Ecto.Changeset.validate_required([:singular_name, :singular_name_short])
  end
end