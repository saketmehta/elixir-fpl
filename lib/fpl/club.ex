defmodule FPL.Club do
  use Ecto.Schema

  schema "clubs" do
    field :name, :string
    field :short_name, :string

    has_many :players, FPL.Player
    has_many :fixtures_away, FPL.Fixture, foreign_key: :club_away_id
    has_many :fixtures_home, FPL.Fixture, foreign_key: :club_home_id
  end

  def changeset(club, params \\ %{}) do
    club
    |> Ecto.Changeset.cast(params, [:name, :short_name])
    |> Ecto.Changeset.validate_required([:name, :short_name])
  end
end