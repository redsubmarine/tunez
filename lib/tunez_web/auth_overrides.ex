defmodule TunezWeb.AuthOverrides do
  use AshAuthentication.Phoenix.Overrides
  alias AshAuthentication.Phoenix.Components

  override Components.Banner do
    set(:image_url, nil)
    set(:dark_image_url, nil)
    set(:text_class, "text-8xl text-accent-400")
    set(:text, "🎵")
  end

  override Components.Password.Input do
    set(:submit_class, "bg-primary-600 text-white my-4 py-3 px-5 text-sm")
  end
end
