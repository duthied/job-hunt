start : build migrate
	bin/rails server

server_only :
	bin/rails server

build : build_css build_js

build_css :
	bin/rails css:build

build_js :
	bin/rails javascript:build

migrate:
	bin/rails db:migrate