# frozen_string_literal: true

Pacman::Application.routes do
  root "home#show"
  screen :game, "game#show", title: "Game"
  screen :game_over, "game_over#show", title: "GameOver"
end
