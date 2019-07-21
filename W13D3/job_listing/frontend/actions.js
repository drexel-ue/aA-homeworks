export const selectLocation = (city, jobs) => ({
    type: 'SWITCH_LOCTATION',
    city,
    jobs
});

// window.selectLocation = selectLocation;