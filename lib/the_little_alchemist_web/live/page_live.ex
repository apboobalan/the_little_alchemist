defmodule TheLittleAlchemistWeb.PageLive do
  use TheLittleAlchemistWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket |> assign(page: get_first_page(), page_title: "The Little Alchemist", total_pages: total_pages())}
  end

  def handle_event("next", %{"id" => id}, socket) do
    {:noreply, socket |> assign(page: get_next_page(id |> String.to_integer))}
  end

  def handle_event("previous", %{"id" => id}, socket) do
    {:noreply, socket |> assign(page: get_previous_page(id |> String.to_integer))}
  end

  @pages [
    %{content: "Welcome"},
    %{content: "numbers"},
    %{content: "numbers answer"}
  ] |> Enum.with_index(1) |> Enum.map(fn {v, k} -> v |> Map.put(:id, k) end) |> IO.inspect
  defp get_first_page(), do: get_page(1)
  defp get_next_page(id), do: (id + 1) |> get_page()
  defp get_previous_page(id), do: (id - 1) |> get_page()
  defp get_page(id), do: @pages |> Enum.find(& &1.id == id)
  defp total_pages(), do: @pages |> Enum.count()

end
