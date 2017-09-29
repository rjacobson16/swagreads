export const fetchAllReadStatuses = () => (
  $.ajax({
    method: 'GET',
    url: 'api/read_statuses'
  })
);

export const fetchReadStatus = (id) => (
  $.ajax({
    method: 'GET',
    url: `api/read_statuses/${id}`
  })
);

export const createReadStatus = (read_status) => (
  $.ajax({
    method: 'POST',
    url: 'api/read_statuses',
    data: { read_status }
  })
);

export const updateReadStatus = (read_status) => (
  $.ajax({
    method: 'PATCH',
    url: `api/read_statuses/${read_status.id}`,
    data: { read_status }
  })
);
