server {
  listen 80;
 root {{ doc_root }};
 index index.html index.htm;
 server_name {{ server_name }};

 location / {
  default_type "text/html";
  try_files $uri.html $uri $uri/ =404;
 }
}