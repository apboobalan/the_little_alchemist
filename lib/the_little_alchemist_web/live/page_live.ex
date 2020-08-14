defmodule TheLittleAlchemistWeb.PageLive do
  use TheLittleAlchemistWeb, :live_view
  alias TheLittleAlchemist.GenerateContent

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(params, _url, socket) do
    page = (params["page"] || "1") |> String.to_integer() |> GenerateContent.get_page()
    socket = case page do
      %{content: {:error, reason}} ->
        socket |> put_flash(:info,reason<>params["page"]) |> push_patch(to: socket |> Routes.live_path(__MODULE__, page: 1))
      page ->
        :timer.send_after(1500, :clear_flash)
        socket |> assign_page_data(page)
    end
    {:noreply, socket}
  end

  def handle_info(:clear_flash, socket), do: {:noreply, socket |> clear_flash()}

  def handle_event("next", %{"page" => page}, socket) do
    page_number = page |> String.to_integer() |> GenerateContent.get_next_page_number()
    {:noreply, socket |> push_patch(to: socket |> Routes.live_path(__MODULE__, page: page_number))}
  end

  def handle_event("previous", %{"page" => page}, socket) do
    page_number = page |> String.to_integer() |> GenerateContent.get_previous_page_number()
    {:noreply, socket |> push_patch(to: socket |> Routes.live_path(__MODULE__, page: page_number))}
  end

  def handle_event("key_next", %{"key" => "ArrowRight", "page" => page}, socket) do
    page_number = page |> String.to_integer() |> GenerateContent.get_next_page_number()
    {:noreply, socket |> push_patch(to: socket |> Routes.live_path(__MODULE__, page: page_number))}
  end

  def handle_event("key_previous", %{"key" => "ArrowLeft", "page" => page}, socket) do
    page_number = page |> String.to_integer() |> GenerateContent.get_previous_page_number()
    {:noreply, socket |> push_patch(to: socket |> Routes.live_path(__MODULE__, page: page_number))}
  end

  def handle_event(_event, _params, socket) do
   {:noreply, socket}
  end
  defp assign_page_data(socket, page) do
    socket
    |> assign(
      content: page.content,
      page_number: page.number,
      first_page?: GenerateContent.first_page?(page),
      last_page?: GenerateContent.last_page?(page),
      total_pages: page.total_pages
    )
  end
end
