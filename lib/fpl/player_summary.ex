defmodule FPL.PlayerSummary do
  use Ecto.Schema

  schema "player_summaries" do
    field :points, :integer

    belongs_to :fixture, FPL.Fixture
    belongs_to :player, FPL.Player
  end
end