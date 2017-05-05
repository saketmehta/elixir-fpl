defmodule FPL.Repo.Migrations.CreateFixtures do
  use Ecto.Migration

  def change do
    create table(:fixtures) do
      add :kickoff_time_formatted, :string
      add :kickoff_time, :string
      add :gamesweek, :integer
      add :club_away_id, references(:clubs)
      add :club_home_id, references(:clubs)
      add :club_away_score, :integer
      add :club_home_score, :integer
    end
  end
end
