import * as ApiUtil from '../util/read_status_api_util';

export const RECEIVE_ALL_READ_STATUSES = 'RECEIVE_ALL_READ_STATUSES';
export const RECEIVE_READ_STATUS = 'RECEIVE_READ_STATUS';
export const RECEIVE_READ_STATUS_ERRORS = 'RECEIVE_READ_STATUS_ERRORS';

export const fetchAllReadStatuses = () => dispatch => (
  ApiUtil.fetchAllReadStatuses().then(read_statuses => dispatch(receiveAllReadStatuses(read_statuses)))
);

export const fetchSingleReadStatus = (id) => dispatch => (
  ApiUtil.fetchReadStatus(id).then(read_status => dispatch(receiveReadStatus(read_status)))
);

export const createReadStatus = (read_status) => dispatch => (
  ApiUtil.createReadStatus(read_status).then(read_status => dispatch(receiveReadStatus(read_status)),
    (error) => dispatch(receiveReadStatusErrors(error.responseJSON)))
);

export const updateReadStatus = (read_status) => dispatch => (
  ApiUtil.updateReadStatus(read_status).then(read_status => dispatch(receiveReadStatus(read_status)),
    (error) => dispatch(receiveReadStatusErrors(error.responseJSON)))
);

const receiveAllReadStatuses = read_statuses => ({
  type: RECEIVE_ALL_READ_STATUSES,
  read_statuses
});

const receiveReadStatus = read_status => ({
  type: RECEIVE_READ_STATUS,
  read_status
});

const receiveReadStatusErrors = errors => ({
  type: RECEIVE_READ_STATUS_ERRORS,
  errors
});
