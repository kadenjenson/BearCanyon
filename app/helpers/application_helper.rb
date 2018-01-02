module ApplicationHelper
  def copyright_generator
    KadoViewer::Renderer.copyright 'Kaden Jenson', 'All rights reserved'
  end

  def bear_copyright
    KadoViewer::Renderer.copyright 'Bear Canyon Construction', 'All rights reserved'
  end
end
