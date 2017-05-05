defmodule FPL.Repo.Migrations.CreatePlayerSummaries do
  use Ecto.Migration

  def change do
    create table(:player_summaries) do
      add :player_id, references(:players)
      add :fixture_id, references(:fixtures)
      add :total_points, :integer
    end
  end
end
