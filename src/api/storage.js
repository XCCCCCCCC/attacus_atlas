import req from '@/utils/request'
export function add(data) {
  return req({
    url: '/insert',
    method: 'post',
    data,
  })
}
export function remove(params) {
  return req({
    url: '/delete',
    method: 'get',
    params,
  })
}
export function list(params) {
  return req({
    url: '/list',
    method: 'get',
    params,
  })
}
