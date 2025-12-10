defmodule TunezWeb.AuthOverrides do
  use AshAuthentication.Phoenix.Overrides

  alias AshAuthentication.Phoenix.Components

  override Components.Banner do
    set :text, "🎵"
  end

  override Components.Password.Input do
    set :submit_class, "bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded"
  end
end