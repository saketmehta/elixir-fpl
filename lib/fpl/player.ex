defmodule FPL.Player do
  use Ecto.Schema

  schema "players" do
    field :web_name, :string
    field :first_name, :string
    field :second_name, :string
    field :event_points, :integer
    field :total_points, :integer

    belongs_to :player_type, FPL.PlayerType
    belongs_to :club, FPL.Club
  end
end