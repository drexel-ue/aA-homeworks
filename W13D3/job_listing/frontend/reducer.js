import { merge } from 'lodash';

const initialState = {
  city: "Please Select",
  jobs: []
};

const reducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case 'SWITCH_LOCATION':
      console.log(action.city);
      newState = merge({}, state);
      newState.city = action.city;
      newState.jobs = action.jobs;
      return newState;
    default:
      return state; // remove this and fill out the body of the reducer function
  }
};

export default reducer;

window.reducer = reducer;
