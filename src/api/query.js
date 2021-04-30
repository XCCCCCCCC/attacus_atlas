import req from '@/utils/request'
export function main(data) {
  return req({
    url: '/query',
    method: 'post',
    data,
  })
}
