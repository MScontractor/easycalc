defmodule UI.Result do
  use Surface.Component

  prop result, :number, required: true

  def render(assigns) do
    ~F"""
      <div class="p-2 h-16 flex items-end justify-end">
        <div class="text-3xl">{@result}</div>
      </div>
    """
  end
end
