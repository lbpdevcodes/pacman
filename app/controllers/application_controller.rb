# frozen_string_literal: true

module Pacman
  class ApplicationController < Charming::Controller
    layout Layouts::ApplicationLayout

    include Charming::Shell::Palette

    key "ctrl+p", :open_command_palette, scope: :global
    key "q", :quit, scope: :global

    command "Home" do
      navigate :root
    end

    command "Theme", :open_theme_palette
    command "Close palette", :close_command_palette
    command "Quit app", :quit
    command "Game" do
      navigate :game
    end
    command "GameOver" do
      navigate :game_over
    end
  end
end
