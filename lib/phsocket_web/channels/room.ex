defmodule PhsocketWeb.Channels.Room do
  use Phoenix.Channel

  def join("room:lobby", _message, socket) do
    {:ok, socket}
  end

  def join("room:" <> _private_room_id, _params, socket) do
    # {:error, %{reason: "unauthorized"}}
    send(self(), :send_message)
    {:ok, socket}
  end

  def handle_info(:send_message, socket) do
    push(socket, "hello", %{message: "you got a message"})
    {:noreply, socket}
  end
end
