# frozen_string_literal: true

class DocumentsReflex < StimulusReflex::Reflex
  def edit(value)
    find_document&.update(content: value)
  end

  def update
    find_document&.update(content: element[:value])
  end

  private

  def find_document
    Document.find_by(
      session_id: session.id,
      id: element.dataset[:id]
    )
  end
end
