defmodule UI.Input do
  use Surface.Component

  def render(assigns) do
    ~F"""
      <div class="p-2 h-16 flex items-start justify-end">
        <div class="text-3xl text-white">2 + 6</div>
      </div>
    """
  end
end
