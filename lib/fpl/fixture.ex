defmodule FPL.Fixture do
  use Ecto.Schema

  schema "fixtures" do
    field :kickoff_time_formatted, :string
    field :kickoff_time, :string
    field :gamesweek, :integer
    field :club_away_score, :integer
    field :club_home_score, :integer

    belongs_to :club_away, FPL.Club, foreign_key: :club_away_id
    belongs_to :club_home, FPL.Club, foreign_key: :club_home_id
  end
end