defmodule TunezWeb.AuthController do
  use TunezWeb, :controller
  use AshAuthentication.Phoenix.Controller

  def success(conn, _activity, user, _token) do
    conn
    |> store_in_session(user)
    |> assign(:current_user, user)
    |> put_flash(:info, "Welcome back!")
    |> redirect(to: "/")
  end

  def failure(conn, _activity, _reason) do
    conn
    |> put_flash(:error, "Authentication failed")
    |> redirect(to: "/sign-in")
  end

  def sign_out(conn, _params) do
    conn
    |> clear_session(:tunez)
    |> put_flash(:info, "Signed out successfully")
    |> redirect(to: "/")
  end
end