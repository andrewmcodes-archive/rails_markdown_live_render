class DocumentsReflex < StimulusReflex::Reflex
  def edit
    @edit_id = element.dataset[:id].to_i
  end

  def cancel_edit
    @edit_id = nil
  end

  def update
    Document.find_by(session_id: session.id, id: element.dataset[:id])&.update content: element[:value]
  end
end
