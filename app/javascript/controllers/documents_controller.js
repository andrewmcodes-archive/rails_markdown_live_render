import { Controller } from 'stimulus';
import StimulusReflex from 'stimulus_reflex';

export default class extends Controller {
  connect() {
    StimulusReflex.register(this);
  }

  edit(e) {
    // Probably an issue on my end but I tried just calling update here without values and it didn't work.
    this.stimulate('DocumentsReflex#edit', e.target, e.target.value);
  }

  // Why doesn't this work?
  // this.stimulate('DocumentsReflex#edit', e.target.value);

  // But this does? (I thought element was optional?)
  // this.stimulate('DocumentsReflex#edits', e.target, e.target.value);
}
