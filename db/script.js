import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
  vus: 200,
  duration: '60s',
};

export default function() {
  let request = `http://localhost:8673/products/${Math.ceil(Math.random() * 10000000)}`
  // request += `/stores/${Math.ceil(Math.random() * 10000)}`
  http.get(request);
  sleep(0.1);
}