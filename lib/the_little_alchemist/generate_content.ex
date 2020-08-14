defmodule TheLittleAlchemist.GenerateContent do
  @book_path "lib/the_little_alchemist/the_little_alchemist_book/"
  def get_pages(), do: @book_path |> Path.expand() |> File.ls!()
  def read_page(nil), do: {:error, "No such page."}
  def read_page(page_name), do: (@book_path <> page_name) |> Path.expand() |> File.read!()
  def to_html({:error, reason}), do: {:error, reason}
  def to_html(content), do: content |> Earmark.as_html!()

  def get_page(number) do
    pages = get_pages()

    content =
      pages
      |> Enum.sort()
      |> Enum.at(number - 1)
      |> read_page
      |> to_html()

    %{number: number, content: content, total_pages: pages |> Enum.count()}
  end

  def get_previous_page_number(page_number), do: page_number - 1
  def get_next_page_number(page_number), do: page_number + 1
  def first_page?(page), do: page.number == 1
  def last_page?(page), do: page.number == page.total_pages
end
