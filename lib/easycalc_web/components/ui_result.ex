defmodule UI.Result do
  use Surface.Component

  def render(assigns) do
    ~F"""
      <div class="p-2 h-16 flex items-end justify-end">
        <div class="text-3xl">8</div>
      </div>
    """
  end
end
